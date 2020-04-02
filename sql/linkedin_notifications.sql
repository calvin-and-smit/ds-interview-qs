/***************************************************************************************************

Notification Deliveries

This question was asked by: Linkedin

`notification_deliveries` table

column	type
notification	varchar
user_id	int
created_at	datetime
 

`users` table

column	type
user_id	int
created_at	datetime
conversion_date	datetime
 

We're given two tables, a table of notification deliveries and a table of users with created and purchase 
conversion dates. If the user hasn't purchased then the `conversion_date` column is NULL.

1. Write a query to get the distribution of total push notifications before a user converts.

2. Write a query to get the conversion rate for each notification.

Example Output:

notification	conversion_rate
activate_premium	0.05
try_premium	0.03
free_trial	0.11

***************************************************************************************************/
