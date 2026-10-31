# Book Sales & Inventory Analysis Using SQL

## Project Overview

The Book Sales & Inventory Analysis project focuses on analyzing bookstore sales transactions, customer purchasing behavior, book performance, and inventory levels using PostgreSQL.

The project is designed to explore business-related questions through SQL and understand how transactional data can help businesses monitor sales performance, identify popular products, analyze customer spending patterns, and manage inventory effectively.

## Project Objectives

* Analyze overall book sales and revenue performance.
* Identify the best-selling books and popular genres.
* Understand customer purchasing patterns.
* Evaluate sales performance across different authors.
* Analyze book prices and available stock.
* Calculate remaining inventory after order fulfillment.
* Identify customers with frequent purchases and higher spending.

## Database Structure

The project consists of three relational tables:

**1. BOOK_SALES**

* Book ID
* Title
* Author
* Genre
* Published Year
* Price
* Stock

**2. CUSTOMER**

* Customer ID
* Name
* Email
* Phone
* City
* Country

**3. ORDERS**

* Order ID
* Customer ID
* Book ID
* Order Date
* Quantity
* Total Amount

## SQL Skills & Techniques Used

* Data Retrieval using SELECT
* Data Filtering using WHERE
* Sorting using ORDER BY
* Removing duplicates using DISTINCT
* Aggregate Functions (SUM, AVG, COUNT)
* INNER JOIN and LEFT JOIN
* GROUP BY and HAVING
* Handling NULL values using COALESCE
* Limiting records using LIMIT

## Business Analysis Performed

The project addresses several business questions, including:

1. Which book genres are available in the bookstore?
2. How many books are available in total stock?
3. Which books have the highest prices?
4. Which genre contributes the most book sales?
5. Which authors generate higher book sales?
6. Which customers have placed multiple orders?
7. Which books are ordered most frequently?
8. How much revenue is generated from book orders?
9. Which customers contribute the highest order value?
10. How much inventory remains after fulfilling customer orders?

## Tools & Technologies

* PostgreSQL
* pgAdmin 4
* SQL

## Project Outcome

This project demonstrates the practical application of SQL in sales and inventory analysis. It helped develop skills in relational database querying, data aggregation, joining multiple tables, and extracting business-relevant information from transactional data.

**Project Category:** SQL | Data Analytics | Business Analysis

Link: https://github.com/MDSAMEERKHAN23/BOOK_SALES_ANALYSIS/blob/main/BOOK_SALES_PROJECT.sql
