# Window Functions

## Overview

This module focuses on SQL Window Functions, which are widely used in Product Analytics to perform calculations across rows while preserving the original dataset. Unlike `GROUP BY`, window functions do not collapse rows, making them ideal for ranking, trend analysis, and cumulative metrics.

## Topics Covered

1. ROW_NUMBER()
2. RANK()
3. LAG()
4. SUM() OVER() (Running Total)
5. OVER() Clause
6. ORDER BY within Window Functions

## Business Problems Solved

1. Rank customers by total revenue using ROW_NUMBER().
2. Rank customers by total revenue using RANK().
3. Identify the top 3 customers based on total revenue.
4. Rank all orders by purchase amount.
5. Show each order amount along with the previous order amount.
6. Calculate the difference between the current and previous order amount.
7. Calculate running revenue over time.
8. Generate cumulative revenue by order date.
9. Identify the most recent order using ROW_NUMBER().
10. Build a customer revenue leaderboard showing customer name, total revenue, and revenue rank.

## Key Learnings

1. Window functions perform calculations across rows without reducing the number of records.
2. ROW_NUMBER() assigns a unique sequential number to every row.
3. RANK() assigns the same rank to tied values while skipping the next rank.
4. LAG() retrieves values from the previous row for comparison.
5. SUM() OVER() is used to calculate running totals and cumulative revenue.
6. ORDER BY inside the OVER() clause defines the sequence used for the window calculation.

## Business Applications

1. Product Analytics
2. Customer Revenue Analysis
3. Executive Dashboards
4. Revenue Trend Analysis
5. Customer Leaderboards
6. Growth & Retention Reporting
7. Sales Performance Analysis

## Dataset Used

1. Users Table – Customer information.
2. Orders Table – Customer purchase history.

The SQL queries in this module demonstrate how Window Functions can answer real business questions using these two datasets.
