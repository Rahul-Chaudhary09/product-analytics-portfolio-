-- Business Problem 1
-- Rank customers from highest revenue to lowest revenue using ROW_NUMBER().

select u.user_id,u.name,sum(o.amount) as revenue, 
row_number () over (order by sum(o.amount) desc) as revenue_row_number
from users u join orders o 
on u.user_id = o.user_id
group by 1,2;

-- Business Problem 2
-- Rank customers from highest revenue to lowest revenue using RANK().
select u.user_id,u.name,sum(o.amount) as revenue,
rank () over(order by sum(o.amount) desc) as revenue_rank
from users u join orders o 
on u.user_id= o.user_id 
group by 1,2;

-- Business Problem 3 
-- Identify the top 3 customers by total revenue.
select * from 
(select u.user_id,u.name,sum(o.amount) as revenue,
rank () over(order by sum(o.amount) desc) as ranks
from users u join orders o 
on u.user_id=o.user_id 
group by 1,2) t
where ranks <= 3;

-- Business Problem 4 
-- Rank every order from highest amount to lowest amount.
select u.user_id,u.name,o.order_id,o.amount,
rank () over(order by o.amount desc) as order_amount_rank
from users u join orders o 
on u.user_id = o.user_id;

-- -- Business Problem 5
-- Show each order amount along with the previous order amount.

select u.user_id,u.name,o.order_date,o.amount,
lag (o.amount) over(order by o.order_date) as previous_amount
from users u join orders o 
on u.user_id = o.user_id; 

-- Business Problem 6
-- For each order, calculate the difference between the current amount and the previous amount.
select u.user_id,u.name,o.order_date,o.amount,
lag(o.amount) over(order by o.order_date )
			as previous_amount, 
				o.amount - lag(o.amount) over(order by o.order_date) 
				 	as difference
from users u join orders o 
on u.user_id = o.user_id;

-- Business Problem 7
-- Calculate the running total of revenue based on order date.
select u.user_id,u.name,o.order_date,o.amount,
sum(o.amount) over(order by o.order_date) as running_total
from users u join orders o 
on u.user_id = o.user_id;

-- Business Problem 8
-- Show order date, order amount, and cumulative revenue.
select order_date,amount,
sum(amount) over(order by order_date) as cumulative_revenue
from orders;

-- Business Problem 9
-- Identify the most recent order in the database using ROW_NUMBER().
select *from (
		select order_id,amount,order_date,
	row_number() 	
		over(order by order_date desc) as recent_order
from orders)
where recent_order = 1;


-- Business Problem 10
-- Create a customer leaderboard showing:
-- Customer Name
-- Total Revenue
-- Revenue Rank

select u.name,sum(o.amount) as revenue,
rank() over(order by sum(o.amount)desc) as ranks
from users u join orders o on 
u.user_id = o.user_id
group by 1;
