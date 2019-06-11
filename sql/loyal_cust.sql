/*******************************************************************************************************************

Question 18 - A hotel chain's loyal customers
________________________________________
You are an analyst for a major US hotel chain which has locations all over the US. 
Your marketing team is planning a promotion focused around loyal customers, and they are trying to 
forecast how much revenue the promotion will bring in. However, they need help from you to 
understand how much revenue comes from "loyal" customers to plug into their model. 

A "loyal" customer is defined as 
(1) having a memebership with your company's point system, 
(2) having >2 stays at each hotel the customer visited, 
(3) having stayed at 3 different locations throughout the US.

You have a table showing all transactions made in 2017. The schema of the table is below:
Table: customer_transactions

Column Name	        Data Type	  Description
customer_id	        id	        id of the customer
hotel_id	          integer	    unique id for hotel
transaction_id	    integer	    id of the given transaction
first_night	        string	    first night of the stay, column format is "YYYY-mm-dd" 
number_of_nights	  integer	    # of nights teh customer stayed in hotel
total_spend	        integer	    total spend for transaction, in USD
is_memeber	        boolean	    indicates if the customer is a member of our points system

Can you write a query that calculates percent of revenue loyal customers brought in 2017? 

*******************************************************************************************************************/

select sum(case when customer_id in loyal_cust_subquery then total_spend else 0 end)/sum(total_spend)
from customer_transactions


# Loyal Customers "loyal_cust_subquery"
select cond_2.customer_id
from 
(select customer_id, hotel_id, count(distinct transaction_id)/count(distinct hotel_id) as hotel_stays
from customer_transactions
group by customer_id, hotel_id
having hotel_stays > 2) as cond_2
inner join
(select customer_id, count(distinct hotel_id) as US_Stays
from customer_transactions
where is_member = 1
group by customer_id
having US_Stays > 2) as cond_13
on cond_2.customer_id = cond_13.customer_id




# having > 2 stays at each hotel the customer visited
select customer_id, hotel_id, count(distinct transaction_id)/count(distinct hotel_id) as hotel_stays
from customer_transactions
group by customer_id, hotel_id
having hotel_stays > 2


# membership with point system and having stayed at 3 different locations throughout the US
select customer_id, count(distinct hotel_id) as US_Stays
from customer_transactions
where is_member = 1
group by customer_id
having US_Stays > 2







