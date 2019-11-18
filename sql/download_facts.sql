/**************************************************************************************************

Download Facts
This question was asked by: Microsoft

`user_dimension` table

column	type
user_id	int
account_id	int
`account_dimension` table

column	type
account_id	int
paying_customer	boolean
`download_facts` table

column	type
date	date
user_id	int
downloads	int
Given three tables, user_dimension, account_dimension, and download_facts, find the average 
number of downloads for free vs paying customers broken out by day.

Hint: The `account_dimension` table maps users to multiple accounts where they could be a 
paying customer or not.

**************************************************************************************************/
