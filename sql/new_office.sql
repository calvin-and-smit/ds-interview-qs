/******************************************************************************************

Planning for a new office, using SQL
SQL Database Querying Union
Suppose you work for a retail company and have access to two tables:


Customers:

customer_id	city
0	New York
1	New York
2	Los Angeles
3	Jacksonville
Suppliers:

supplier_id	city
0	Omaha
1	New York
2	San Francisco
3	Los Angeles
You've been tasked to find which cities have a strong overlap with both customers and suppliers, 
as your company explores opening an additional office. Using SQL, write a query to stack rank the 
frequency of the cities shown across both databases.

Your query should return the following elements:

City
# of times city appeared across both tables

******************************************************************************************/

select c.city as City, (c.c_count + s.s_count) as appear_count
from
  (
  select city, count(customer_id) as c_count
  from customers
  group by city
  ) as c
inner join
  (
  select city, count(supplier_id) as s_count
  from suppliers
  group by city
  ) as s
on c.city = s.city
