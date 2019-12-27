/**************************************************************************************************************

Subscription Overlap
Good morning. Here's your sql question for today.

This question was asked by: Twitch
subscriptions table

column	       type
user_id	        int
start_date	date
end_date	date
 

Given a table of product subscriptions with a subscription start date and end date for each user, 
write a query that returns true or false whether or not each user has a subscription date range that 
overlaps with any other user.

Example:

user_id	start_date	end_date
1	2019-01-01	2019-01-31
2	2019-01-15	2019-01-17
3	2019-01-29	2019-02-04
4	2019-02-05	2019-02-10
 

Output

user_id	overlap
1	True
2	True
3	True
4	False

**************************************************************************************************************/
