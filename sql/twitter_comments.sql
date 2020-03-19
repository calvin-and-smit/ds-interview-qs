/***


Ad Comments

This question was asked by: Twitter
`feed_comments`

 ad_id   |  user_id  |  comment_id
---------+-----------+---------------
 integer |  integer  |   integer

`moments_comments`

 ad_id   |  user_id  |  comment_id
---------+-----------+---------------
 integer |  integer  |   integer

`ads`

 id      |  name
---------+--------
 integer | varchar
 

You're given three tables.

An ads table holds an ID and the advertisement name like "Labor day shirts sale". 
The feed_comments table holds the comments on ads by different users that occurs in the regular feed. 
The moments_comments table holds the comments on ads by different users in the moments section.

Write a query to get the percentage of comments, by ad, that occurs in the feed versus mentions sections of the app.

Comment ratio by ad

ad_name       | % feed   | % mentions
--------------+----------+-----------
Labor Day     | 60%      | 40%
Polo Shirts   | 85%      | 15%

***/
