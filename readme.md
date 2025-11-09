1. What is PostgreSQL?
PostgreSQL is a free, open-source relational database management system known for reliability, scalability, and advanced SQL support.


2. What is the purpose of a database schema in PostgreSQL?
A schema organizes database objects (tables, views, etc.) into logical groups, helping manage and separate data within the same database.


3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
A Primary Key uniquely identifies each record in a table, ensuring no duplicates or nulls.
A Foreign Key links one table to another, maintaining relationships and referential integrity.


4. What is the difference between the VARCHAR and CHAR data types?
VARCHAR(n): Stores variable-length text up to n characters.
CHAR(n): Fixed-length text, padded with spaces if shorter than n.


5. Explain the purpose of the WHERE clause in a SELECT statement.
The WHERE clause filters rows based on specific conditions, returning only the records that match.
Example:
SELECT * FROM employees
WHERE age > 30;


6. What are the LIMIT and OFFSET clauses used for?
LIMIT restricts how many rows are returned, and OFFSET skips a specified 
Example:
SELECT *FROM STUDENT
WHERE DEPT="CSE"
LIMIT 10
OFFSET 20;


7. How can you modify data using UPDATE statements?
The UPDATE statement changes existing data in a table.
Example:
UPDATE STUDENT SET NAME="SHAKHAWAT"
WHERE ID="17054";


8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
A JOIN combines data from multiple tables using a related column, such as an ID. It allows viewing connected data together.
Example: joining orders and customers using customer_id.


9. Explain the GROUP BY clause and its role in aggregation operations.
GROUP BY groups rows with the same values and is used with aggregate functions like SUM() or AVG() to summarize data by category.
Example:
SELECT department, AVG(salary) FROM employees 
GROUP BY department_id;


10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
Aggregate functions perform calculations on multiple rows:

COUNT() = number of rows
SUM() = total
AVG() = average
Example:
SELECT COUNT(*), SUM(salary), AVG(salary) FROM EMPLOYEESS;
