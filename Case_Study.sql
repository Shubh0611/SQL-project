1. 
# Highest profit category and its respective sum of profit
SELECT category, SUM(profit) 
FROM orders 
GROUP BY category 
ORDER BY max(profit) desc;

2.
# update the city as Chandigarh where the State is Chandigarh
UPDATE orders
set city = 'Chandigarh'
WHERE State = 'Chandigarh';
SELECT * FROM orders;

3.
# Write a query to find the total profit sum from orders table.
SELECT SUM(profit) FROM orders;

4.
# Query to get the highest profit orders
SELECT Order_ID, Product_Name, Profit 
FROM orders
order by profit desc;

5.
# Query to get the orders with loss
SELECT Order_ID, Product_Name, (Profit) as loss
FROM orders
order by loss;

6.
# Query to understand the relation between loss and Discount given
SELECT Order_ID, Product_Name, Profit, Discount
FROM orders
WHERE Profit <0
order by discount, profit;

7.
# State which is making Highest loss
select State, sum(profit) as loss 
from orders
group by state
order by sum(profit) asc;

8.
#Write a query to get state, category and sum of profits
SELECT State, Category, SUM(Profit)
FROM orders
group by State, Category;

9.
#Write a query to create a table in the database with Name as Manager and with values provided
CREATE table Manager (Segment Varchar(100), Segment_Manager Varchar(100));
INSERT INTO Manager values('Consumer', 'Gaganjit Singh'), 
						  ('Corporate', 'Aman Jain'), 
						  ('Home Office', 'Kush Arora');
SELECT * FROM Manager;

10.
# Write a query to get Segment, count of order, sum of profit
SELECT Segment, COUNT(Order_ID), SUM(profit)
FROM orders
group by Segment;

11.
# Write the query to get sum of sales, sum of profit for the year 2020
select * from orders;
SELECT SUM(sales), SUM(profit)
from orders
WHERE order_date like '%20';

12.
# Write a query to get the sum of sales of each segment and their respective segment manager for all years except 2020
SELECT SUM(sales), Manager.segment, Manager.Segment_Manager
FROM orders
INNER JOIN Manager on orders.segment = Manager.segment
WHERE order_date not like '%20'
group by segment;

13.
# Write a query to get Customer ID and sum of profit for each
SELECT Customer_ID, SUM(profit)
from orders
group by Customer_id
order by sum(profit) desc;

14.
# Write a query to get Customer ID and sum of profit for each
# The query should have columns : Customer_ID, Customer_Name_, sum of Sales, sum of Profit, count of Order_ID
SELECT customers.Customer_ID, Customer_Name_, SUM(sales), sum(profit), count(order_ID)
from orders
inner join customers on orders.customer_ID = customers.customer_ID
group by customer_id
order by sum(profit) desc;
