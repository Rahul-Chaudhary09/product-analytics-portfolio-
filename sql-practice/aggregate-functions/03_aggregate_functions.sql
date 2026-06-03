Use product_analytics;

CREATE TABLE orders (
order_id INT PRIMARY KEY,
user_id INT,
amount DECIMAL(10,2),
order_date DATE
);

INSERT INTO orders VALUES
(1,1,499.99,'2025-01-15'),
(2,2,299.50,'2025-01-18'),
(3,3,799.00,'2025-02-01'),
(4,1,149.99,'2025-02-10'),
(5,5,999.99,'2025-03-05'),
(6,4,199.99,'2025-03-12'),
(7,2,349.99,'2025-03-20'),
(8,6,1200.00,'2025-04-01');

select * from orders;

-- Business Problem:
-- How many total orders have been placed on the platform?
select count(order_id) as total_orders from orders;

-- Business Problem:
-- What is the total revenue generated from all customer orders?
select sum(amount) as total_revenue from orders;

-- Business Problem:
-- What is the average amount customers spend per order?
select avg(amount) as average_order_value from orders;

-- Business Problem:
-- What is the highest order value ever recorded?
select max(amount) as highest_order from orders;

-- Business Problem:
-- What is the lowest order value ever recorded?
select min(amount) as lowest_amount from orders;

-- Business Problem:
-- How many orders were placed after March 1, 2025?
select count(*) as order_placed from orders
where order_date > '2025-03-01';

-- Business Problem:
-- How much revenue was generated after March 1, 2025?
select sum(amount) as total_revenue from orders 
where order_date > '2025-03-01';

-- Business Problem:
-- What is the average order value for high-value purchases above ₹500?
select avg(amount) as average_order_value from orders
where amount > 500;

-- Business Problem:
-- What is the largest purchase made after February 1, 2025?
select max(amount) as highest_purchase from orders 
where order_date > '2025-02-01';

-- Business Problem:
-- How many purchases exceeded ₹300 in value?
select count(*) as purchases from orders 
where amount > 300;

-- Business Problem:
-- What is the total revenue contributed by purchases greater than ₹300?
select sum(amount) as total_purchase from orders 
where amount > 300;

-- Business Problem:
-- What was the average purchase value before March 1, 2025?
select avg(amount) as purchases from orders 
where order_date < '2025-03-01';

-- Business Problem:
-- How many unique customers have made at least one purchase?
select count(distinct user_id) as unique_orders from orders;

-- Business Problem:
-- How much total revenue has customer 1 generated?
select sum(amount) as total_revenue from orders 
where user_id = 1;

-- Business Problem:
-- What is the average order value of customer 2?
select avg(amount) as average_purchase from orders 
where user_id = 2;
