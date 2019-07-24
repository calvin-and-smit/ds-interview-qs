/*********************************************************************************

Question 37 - Employees who are managers
________________________________________
Suppose you're trying to understand how many managers you have per employee at Company XYZ. 
On your search to understand, you are given two tables: (1) managers and (2) employees. 
Each table has 1 column named id. 

Given this dataset, can you use SQL to find the employees that are also managers? 
Hint: given the table names as well as the single column name you should be able to write a full SQL query.

*********************************************************************************/


select e.id
from employees_table as e
inner join managers_table as m
on e.id = m.id
