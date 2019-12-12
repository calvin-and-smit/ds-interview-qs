/************************************************************************************************

Employee Salaries


This question was asked by: Microsoft

employees table

columns	types
id	int
first_name	varchar
last_name	varchar
salary	int
department_id	int
 

departments table

columns	types
id	int
name	varchar
 

1. Given the tables above, select the top 3 departments by the highest percentage of employees 
making over 100K in salary and have at least 10 employees.

Example output:

> 100K %	department name	number of employees
90%	engineering	25
50%	marketing	50
12%	sales	12
2. Let’s say due to an ETL error, the employee table instead of updating the salaries every year when 
doing compensation adjustments, did an insert instead. The head of HR still needs the current salary of 
each employee. Write a query to get the current salary for each employee.

Assume no duplicate combination of first and last names. (I.E. No two John Smiths)


************************************************************************************************/
