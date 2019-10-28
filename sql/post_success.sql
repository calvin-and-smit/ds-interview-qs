/******************************************************************************************************************

Interview Query Question #19 | Post Success

This question was asked by: Facebook

post_events 

column	    type
user_id	    int
created_at	datetime
event_name	varchar


In the table above, column `event_name` represents either ('event', 'post', 'cancel') for when a 
user starts a post (enter), ends up canceling it (cancel), or ends up posting it (post).

Write a query to get the post success rate for each day over the past week.

Sample:

user_id	  created_at	event_name
123	      2019-01-01	enter
123	      2019-01-01	post
456	      2019-01-02	enter
456	      2019-01-02	cancel

******************************************************************************************************************/
