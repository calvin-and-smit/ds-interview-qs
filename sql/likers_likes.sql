Liker's likers
Good morning. Here's your sql question for today.

This question was asked by: Calm
`likes` table

column	type
user_id	int
created_at	datetime
liker_id	int
 

A dating websites schema is represented by a table of people that like other people. The table has three columns. One column is the user_id, another column is the liker_id which is the user_id of the user doing the liking, and the last column is the date time that the like occured.

Write a query to count the number of liker's likers (the users that like the likers) if the liker has one.

Example:

Input:

user	liker
A	B
B	C
B	D
D	E
 

Output:

user	count
B	2
D	1
