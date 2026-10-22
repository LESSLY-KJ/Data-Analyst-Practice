-- ====================================================================
-- Day 2 Practice: SQL Filtering & Logical Conditions
-- Source: Coddy.tech | SQL Fundamentals - Chapter 2: Conditions
-- Date: 2026-10-22
-- ====================================================================

-- --------------------------------------------------------------------
-- Lesson 1: Conditions Basics (WHERE with comparison operators)
-- Goal: Select all products with a price greater than 50
-- --------------------------------------------------------------------
SELECT * 
FROM products
WHERE price > 50;

/*
Sample Output:
+----+--------------+-------+
| id | name         | price |
+----+--------------+-------+
|  2 | Laptop       | 999.0 |
|  4 | Headphones   |  79.5 |
+----+--------------+-------+
*/


-- --------------------------------------------------------------------
-- Lesson 2: The AND Keyword (Both conditions must be TRUE)
-- Goal: Select active users who are older than 18
-- --------------------------------------------------------------------
SELECT username, age, is_active
FROM users
WHERE age > 18 AND is_active = 1;

/*
Sample Output:
+----------+-----+-----------+
| username | age | is_active |
+----------+-----+-----------+
| alex99   |  24 |         1 |
| priya_d  |  21 |         1 |
+----------+-----+-----------+
*/


-- --------------------------------------------------------------------
-- Lesson 3: The OR Keyword (At least ONE condition must be TRUE)
-- Goal: Find customers living in either 'New York' or 'London'
-- --------------------------------------------------------------------
SELECT customer_id, name, city
FROM customers
WHERE city = 'New York' OR city = 'London';

/*
Sample Output:
+-------------+---------------+----------+
| customer_id | name          | city     |
+-------------+---------------+----------+
|         101 | John Doe      | New York |
|         104 | Emily Clark   | London   |
+-------------+---------------+----------+
*/


-- --------------------------------------------------------------------
-- Lesson 4: The NOT Keyword (Excluding matching records)
-- Goal: Retrieve all employees who are NOT in the 'HR' department
-- --------------------------------------------------------------------
SELECT employee_id, name, department
FROM employees
WHERE NOT department = 'HR';

/*
Sample Output:
+-------------+---------------+------------+
| employee_id | name          | department |
+-------------+---------------+------------+
|           1 | Sarah Jenkins | Sales      |
|           2 | Mike Vance    | Tech       |
+-------------+---------------+------------+
*/


-- --------------------------------------------------------------------
-- Lesson 5: Multiple Conditions with Parentheses ()
-- Goal: Prioritize OR logic inside parentheses before evaluating AND
-- --------------------------------------------------------------------
SELECT order_id, status, total_amount
FROM orders
WHERE (status = 'Shipped' OR status = 'Delivered') 
  AND total_amount > 100;

/*
Sample Output:
+----------+-----------+--------------+
| order_id | status    | total_amount |
+----------+-----------+--------------+
|      502 | Shipped   |       150.00 |
|      505 | Delivered |       220.50 |
+----------+-----------+--------------+
*/
