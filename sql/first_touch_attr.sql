/*******************************************************************************************************************

First Touch Attribution

This question was asked by: Google

`attribution` table

column	          type
id	          int
created_at	  datetime
session_id	  int
channel	          varchar
conversion	  boolean


`user_sessions` table

column	        user_id
session_id	int
user_id	        int

The schema above is for a retail online shopping company.


The attribution table logs each user visit where a user comes onto their site to go shopping. 
If conversion = 1, then on that session visit the user converted and bought an item. 
The channel column represents which advertising platform the user got to the shopping site on that session. 
The `user_sessions` table maps each session visit back to the user.

First touch attribution is defined as the channel to which the converted user was associated with when they 
first discovered the website. Calculate the first touch attribution for each user_id that converted.

Example output:

user_id	      channel
123	      facebook
145	      google
153	      facebook
172	      organic
173	      email

*******************************************************************************************************************/

select user, channel
from
(
  select u.user_id as user, a.channel as channel, min(a.datetime) as first_interaction
  from attribution as a
  left join user_sessions as u
  on a.session_id = u.session_id
  where user_id in 
  (
    select u.user_id as user
    from attribution as a
    left join user_sessions as u
    on a.session_id = u.session_id
    where a.conversion = 1
  )
  group by u.user_id
)
