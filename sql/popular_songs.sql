/*******************************************************************************************************************

Below are two table schemas for a popular music streaming application:
Table 1: user_song_log
Column Name	  Data Type	  Description
user_id	      id	        id of the streaming user
timestamp	    integer	    timestamp of when the user started listening to the song, epoch seconds
song_id	      integer	    id of the song
artist_id	    integer	    id of the artist

Table 2: song_info
Column Name	  Data Type	  Description
song_id	      integer	    id of the song
artist_id	    integer	    id of the artist
song_length	  integer	    length of song in seconds


Question: 
Can you write a SQL query to estimate the average number of hours a user spends listening to music daily? 


*******************************************************************************************************************/


select user_id, date, avg(song_length)/3600 as avg_hrs
from
(
  select logs.user_id, logs.song_id, DATE(TIMESTAMP_MILLIS(CAST(logs.timestamp AS INT64))) as date, info.song_length
  from user_song_log as logs
  left join song_info as info
  on logs.song_id = info.song_id
)
group by user_id, date
                                                    
