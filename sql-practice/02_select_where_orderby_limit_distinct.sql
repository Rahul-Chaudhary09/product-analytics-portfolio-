CREATE DATABASE product_analytics;
USE product_analytics;

CREATE TABLE users (
    user_id INT,
    name VARCHAR(50),
    country VARCHAR(50),
    signup_date DATE
);

INSERT INTO users VALUES
(1,'Rahul','India','2025-01-10'),
(2,'John','USA','2025-01-15'),
(3,'Emma','UK','2025-02-01'),
(4,'Priya','India','2025-02-10'),
(5,'Alex','Canada','2025-03-05'),
(6,'David','USA','2025-03-12'),
(7,'Sophia','India','2025-03-18'),
(8,'Mike','UK','2025-04-02');

select * from users;



-- Business Problem:
-- What user information is available in our database?
select * from users;

-- Business Problem:
-- What are the names of all registered users?
select name from users;

-- Business Problem:
-- Which countries do our users come from?
select country from users;

-- Business Problem:
-- When did each user join the platform?
select name,signup_date from users;

-- Business Problem:
-- Which users are currently located in India?
select * from users 
where country = 'India';

-- Business Problem:
-- Which users are currently located in the United States?
select * from users 
where country = 'USA';

-- Business Problem:
-- Which users joined the platform after February 1, 2025?
select * from users 
where signup_date > '2025-02-01';

-- Business Problem:
-- Which users have a user ID greater than 5?
select * from users 
where user_id > 5;

-- Business Problem:
-- What are the names of all users located in the United Kingdom?
select name from users 
where country = 'UK';

-- Business Problem:
-- Which users joined the platform most recently?
select * from users
order by signup_date desc;

-- Business Problem:
-- Which users joined the platform earliest?
select * from users 
order by signup_date asc;

-- Business Problem:
-- How would the user list look if sorted alphabetically by name?
select * from users 
order by name asc;

-- Business Problem:
-- How are users distributed when sorted alphabetically by country?
select * from users 
order by country asc;

-- Business Problem:
-- Show a small sample of 3 users for quick data inspection.
select * from users
limit 3;

-- Business Problem:
-- Show a sample of the first 5 users from the database.
select * from users
limit 5;

-- Business Problem:
-- Who are the 2 most recently acquired users?
select * from users
order by signup_date desc
limit 2;

-- Business Problem:
-- Which Indian users joined the platform most recently?
select name from users 
where country = 'India'
order by signup_date desc;

-- Business Problem:
-- Who are the 2 newest users acquired from India?
select * from users
where country = 'India'
order by signup_date desc
limit 2;

-- Business Problem:
-- What are the signup dates of users from the United States?
select name,signup_date from users 
where country = 'USA';

-- Business Problem:
-- Who are the 3 newest users acquired after February 1, 2025?
select * from users 
where signup_date > '2025-02-01'
order by signup_date desc
limit 3;

-- Business Problem:
-- Which Indian users joined after February 1, 2025, and who joined most recently?
select name from users 
where country = 'India' and signup_date > '2025-02-01'
order by signup_date desc;

-- Business Problem:
-- Show the first 2 users from the United Kingdom sorted alphabetically.
select * from users 
where country = 'UK'
order by name asc
limit 2;

-- Business Problem:
-- Which countries currently have users on our platform?
select distinct country from users;

-- Business Problem:
-- Who are the 3 most recently acquired users?
select name from users 
order by signup_date desc
limit 3;

-- Business Problem:
-- Who are the 3 most recently acquired users?	
select * from users 
where country = 'Canada'; 

