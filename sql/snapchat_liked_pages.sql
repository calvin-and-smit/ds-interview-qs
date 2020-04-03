/***************************************************************************************************
Liked Pages

This question was asked by: Snapchat

`friends` table

column	type
user_id	integer
friend_user_id	integer
 

`page_likes` table

column	type
user_id	integer
page_id	integer
 

Let's say we want to build a naive recommender. We're given two tables, one table called `friends` 
with a user_id and friend_user_id columns representing each user's friends, and another table called 
`page_likes` with a user_id and a page_id representing the page each user liked.

Write an SQL query to create a metric to recommend pages for each user based on recommendations from 
their friends liked pages. 

Note: It shouldn't recommend pages that the user already likes. 

***************************************************************************************************/
