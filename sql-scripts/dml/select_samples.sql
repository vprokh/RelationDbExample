-- basic select

-- selects all columns in the table
SELECT *
FROM orders;

-- selects columns listed in the SELECT separated by comma
SELECT status, created_at, total_price
FROM orders;

-- selects specific order rows for which condition in 'WHERE' statement is true
-- the conditions if the WHERE statement often are being used in combination
-- in order to filter data from select

-- using or
SELECT status, created_at, total_price
FROM orders
WHERE status = 'delivered'
   OR status = 'shipped';

-- using and
SELECT status, created_at, total_price
FROM orders
WHERE status = 'delivered'
  AND total_price >= '0.00';

-- using IN (the same result as for OR option above)
SELECT status, created_at, total_price
FROM orders
WHERE status IN ('delivered', 'shipped');

-- select unique value for the specific column
SELECT DISTINCT status
FROM orders;

-- LIMIT and OFFSET. Often is being used for pagination
SELECT *
FROM product
-- first page (offset) and 5 products on it (limit)
LIMIT 5
OFFSET 0;

-- select distinct value of several columns
SELECT DISTINCT (status, user_id)
FROM orders;

-- usage of aggregate functions

-- several aggregate functions can be used in the same SELECT
SELECT max(price), min(price)
FROM product;

-- aggregate function cannot be used when we have simple column
-- since db cannot represent N value rows of this non-aggregate column to the
-- aggregated value of another column
SELECT category_id, sum(price)
FROM product;

-- to fix it we can use non-aggregate column on the GROUP BY clause
-- and perform grouping of rows by the value of the specified column
-- and aggregation function will work against each group of value after grouping
SELECT category_id, sum(price)
FROM product
GROUP BY category_id;

-- to order/sort value that we receive from select
SELECT *
FROM product
ORDER BY price;

-- we can specify the direction of sorting (by default it is ASC)
SELECT *
FROM product
ORDER BY price DESC;

-- all of the above clauses can be used together
SELECT category_id, sum(price)
FROM product
WHERE price > 5
GROUP BY category_id
ORDER BY category_id DESC;


-- =======================JOINS================================


-- join statements are being used to retrieve data from several tables
-- that have relation to each other using PK (primary key) and FK (foreign key)
-- basically, we can join to table using simple column (that one which is not related
-- to either PK or FK), but in this case we should pay attention to the types of columns
-- in order to make join working

-- (inner) join

SELECT *
FROM users
         JOIN address a on a.id = users.address_id;


-- I am going to use 'AS' in order to assign to the table name some alias
-- in order to reference this table using shorter name (alias)
-- it is pretty common for joins since we have to specify/qualify column name
-- by specific name (if we have column name same in several (at least 2) tables)
-- 'AS' is optional and we can even omit this keyword and set alias next to the table name (take a look at JOIN <table_name> <alias>
SELECT u.name, u.last_name, p.title, p.description, p.price
FROM users AS u
         JOIN address a on a.id = u.address_id
         JOIN orders o on u.id = o.user_id
         JOIN order_product op on o.id = op.order_id
         JOIN product p on p.id = op.product_id
WHERE u.email = 'john@example.com';

-- right (outer) join
SELECT *
FROM product
         RIGHT JOIN public.category c on c.id = product.category_id;


-- left (outer) join
SELECT *
FROM product
         LEFT JOIN order_product op on op.product_id = product.id;


-- cross join. It is combination of rows of specified table in 'FROM' clause, basically
SELECT *
FROM users,
     address;

-- full join. It is combination of all (INNER) JOIN, RIGHT JOIN and LEFT JOIN in the same result
SELECT *
FROM category
         FULL JOIN product p ON category.id = p.category_id;