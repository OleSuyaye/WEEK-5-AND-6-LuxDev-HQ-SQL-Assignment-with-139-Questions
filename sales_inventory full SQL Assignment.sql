-- CREATE schema assignment
CREATE SCHEMA assignment;

SET search_path TO ASSIGNMENT;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

SELECT * FROM ASSIGNMENT.sales;

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

SELECT * FROM assignment.inventory;

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- DATA CLEANING
-- Phone number in customers table
--- Checking out the phone numbers
SELECT phone_number 
FROM ASSIGNMENT.customers;

--- Checking out phone numbers that contain x and characters after it
SELECT phone_number
FROM ASSIGNMENT.customers c 
WHERE c.phone_number LIKE '%x%';

SELECT regexp_replace(phone_number, 'x.*$','', 'i') 
FROM ASSIGNMENT.customers c;

--- Removing Everything after x
UPDATE ASSIGNMENT.customers c 
SET phone_number = regexp_replace(phone_number, 'x.*$', '','i')
WHERE phone_number ~* 'x';

-- Checking phone numbers with +1
SELECT phone_number
FROM ASSIGNMENT.customers c 
WHERE c.phone_number LIKE '+1%';

--- Standardizing the format by removing +1 from phone numbers
UPDATE ASSIGNMENT.customers c  
SET phone_number =  regexp_replace(phone_number, '^\+1','')
WHERE c.phone_number LIKE '+1%';

-- Removing any none digit characters
SELECT regexp_replace(phone_number,'[^0-9]', '', 'g')
FROM ASSIGNMENT.customers;

UPDATE ASSIGNMENT.customers 
SET phone_number = regexp_replace(phone_number,'[^0-9]', '', 'g')
WHERE phone_number ~ '[^0-9]';

-- Checking the length of the phone numbers
SELECT length(phone_number), count(*)
FROM ASSIGNMENT.customers
GROUP BY length(phone_number )
ORDER BY count(*) DESC ;

--- Removing 001 at the begining of some numbers which, we deemded represented +1
SELECT regexp_replace(phone_number, '^001', '')
FROM ASSIGNMENT.customers;

UPDATE ASSIGNMENT.customers
SET phone_number = regexp_replace(phone_number, '^001', '')
WHERE phone_number ~ '^001';


-- 1. Write a query to select all data from the `Customers` table.
SELECT * FROM ASSIGNMENT.customers;

-- 2. Write a query to select the total number of products from the `Products` table.
SELECT COUNT(*)
FROM assignment.products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
SELECT product_name, price 
FROM assignment.products
WHERE price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
SELECT AVG(price)
FROM assignment.products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.
SELECT sum(total_amount)
FROM ASSIGNMENT.sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
SELECT DISTINCT membership_status
FROM ASSIGNMENT.customers c;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
SELECT first_name, last_name, concat(first_name,' ', last_name ) AS full_name
FROM assignment.customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
SELECT product_name, category
FROM assignment.products p 
WHERE category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
SELECT MAX(price)
FROM assignment.products p ;

SELECT product_name, price
FROM assignment.products
ORDER BY price DESC
LIMIT 1;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
SELECT p.product_name , count(total_amount)
FROM ASSIGNMENT.sales s
JOIN ASSIGNMENT.products p 
	ON s.product_id = p.product_id 
GROUP BY p.product_name; 

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
SELECT p.product_name, sum(s.total_amount) AS total_quantity_sold
FROM ASSIGNMENT.sales s
JOIN ASSIGNMENT.products p
	ON s.product_id = p.product_id
GROUP BY p.product_name;

-- 12. Write a query to find the lowest price of products in the `Products` table.
SELECT product_name, price
FROM ASSIGNMENT.products p 
ORDER BY price ASC 
LIMIT 1;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
SELECT DISTINCT first_name, last_name
FROM ASSIGNMENT.sales s 
JOIN customers c 
	ON c.customer_id = s.customer_id 
JOIN ASSIGNMENT.products p 
	ON p.product_id = s.product_id 
WHERE p.price > 1000;


-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
SELECT product_name, sum(total_amount) AS total_sales_amount_per_product
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_sales_amount_per_product desc;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
SELECT c.first_name, c.last_name , sum(total_amount) AS total_spent
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
GROUP BY c.first_name, c.last_name
ORDER BY total_spent desc;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
SELECT first_name, last_name, product_name, quantity_sold
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s
	ON c.customer_id = s.customer_id 
JOIN ASSIGNMENT.products p 
	ON p.product_id = s.product_id;
	
-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT c.first_name AS customers_1, 
	c2.first_name AS customer_2, 
	c.membership_status 
FROM ASSIGNMENT.customers c
JOIN ASSIGNMENT.customers c2 
ON c.membership_status = c2.membership_status
AND c.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
SELECT p.product_name, sum(s.total_amount) AS total_sales
FROM ASSIGNMENT.sales s 
JOIN ASSIGNMENT.products p 
	ON s.product_id = p.product_id 
GROUP BY p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
SELECT p.product_name,i.stock_quantity
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.inventory i 
	ON p.product_id = i.product_id 
WHERE i.stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
SELECT p.product_name, sum(s.quantity_sold)
FROM ASSIGNMENT.sales s 
JOIN ASSIGNMENT.products p 
	ON s.product_id = p.product_id 
GROUP BY p.product_name
Having sum(s.quantity_sold) > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
SELECT DISTINCT c.first_name, c.last_name, p.category
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id
JOIN ASSIGNMENT.products p 
	ON p.product_id = s.product_id 
WHERE p.category = 'Electronics' or p.category = 'Appliances';

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
SELECT p.product_name, sum(s.total_amount)
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
SELECT DISTINCT c.first_name, c.last_name
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
WHERE s.sale_date >='2023-01-01'
	AND s.sale_date < '2024-01-01';

-- 24. Write a query to find the customers with the highest total sales in 2023.
SELECT c.first_name, c.last_name, SUM(s.total_amount) AS total_sales
FROM assignment.customers c 
JOIN assignment.sales s 
	ON c.customer_id = s.customer_id 
WHERE s.sale_date >= '2023-01-01'
  AND s.sale_date < '2024-01-01'
GROUP BY c.first_name, c.last_name
ORDER BY total_sales DESC
LIMIT 1;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
SELECT DISTINCT p.product_name, p.price AS most_expensive, s.quantity_sold
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
WHERE s.quantity_sold > 0
ORDER BY p.price DESC 
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
SELECT COUNT(DISTINCT c.customer_id) AS total_customers
FROM assignment.customers c 
JOIN assignment.sales s 
	ON c.customer_id = s.customer_id 
JOIN assignment.products p 
	ON p.product_id = s.product_id 
WHERE p.price > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT count(s.sale_id) AS total_sales
FROM ASSIGNMENT.sales s 
JOIN ASSIGNMENT.customers c 
	ON c.customer_id = s.customer_id 
WHERE c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
SELECT DISTINCT p.product_name
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.inventory i 
	ON p.product_id = i.product_id 
WHERE i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
SELECT c.first_name, c.last_name, sum(s.quantity_sold) AS total_purchased
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
JOIN ASSIGNMENT.products p 
	ON p.product_id = s.product_id 
GROUP BY  c.first_name, c.last_name
HAVING sum(s.quantity_sold) > 5;

-- 30. Write a query to find the average quantity sold per product.
SELECT p.product_name, AVG(s.quantity_sold)
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.
SELECT count(sale_id) AS total_number_of_sales
FROM ASSIGNMENT.sales s 
WHERE s.sale_date >= '2023-12-01' AND s.sale_date < '2024-01-01';

SELECT COUNT(*) AS total_sales
FROM assignment.sales s
WHERE EXTRACT(MONTH FROM s.sale_date) = 12
  AND EXTRACT(YEAR FROM s.sale_date) = 2023;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
SELECT c.customer_id, c.first_name, c.last_name , sum(total_amount)
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
WHERE EXTRACT (YEAR FROM s.sale_date ) = 2023
GROUP BY c.customer_id ,c.first_name , c.last_name 
ORDER BY sum(total_amount) desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
SELECT p.product_name, s.quantity_sold, p.stock_quantity
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
WHERE s.quantity_sold > 0 AND p.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
SELECT p.product_name, sum(s.total_amount)
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.product_name 
ORDER BY sum(s.total_amount) DESC;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
SELECT c.first_name, c.last_name
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
WHERE s.sale_date > c.registration_date 
	AND s.sale_date <= c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT *
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s
	ON p.product_id = s.product_id
WHERE p.price BETWEEN 100 AND 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
SELECT first_name, last_name, quantity_sold
FROM (
	SELECT c.first_name, c.last_name, s.quantity_sold,
		DENSE_RANK() OVER (ORDER BY s.quantity_sold desc) AS purchases_ranking
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id) purchases_ranking_table
WHERE purchases_ranking = 1;

-- 38. Write a query to find the total quantity of products sold per customer.
SELECT c.customer_id, c.first_name, c.last_name, sum(s.quantity_sold) AS quantity_sold_per_customer
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
SELECT product_name, stock_quantity, stock_ranking  
FROM (
	SELECT p.product_name, p.stock_quantity,
		CASE 
			WHEN dense_rank () OVER (ORDER BY p.stock_quantity desc) = 1 THEN 'Highest'
			WHEN dense_rank () OVER (ORDER BY p.stock_quantity asc) = 1 THEN 'Lowest'
		END AS stock_ranking
	FROM ASSIGNMENT.products p )
WHERE stock_ranking IS NOT NULL;

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
SELECT p.product_name, sum(s.total_amount)
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
WHERE p.product_name LIKE '%phone%'
GROUP BY p.product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
SELECT c.first_name, c.last_name, c.membership_status, p.product_name, sum(s.total_amount) 
FROM ASSIGNMENT.customers c
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
JOIN ASSIGNMENT.products p 
	ON p.product_id = s.product_id 
WHERE c.membership_status = 'Gold'
GROUP BY 
    c.customer_id, c.first_name, c.last_name, p.product_name;
	
-- 42. Write a query to find the total sales of products by category.
SELECT p.category, sum(s.total_amount) AS total_sales_per_category
FROM ASSIGNMENT.sales s 
JOIN ASSIGNMENT.products p 
	ON s.product_id = p.product_id 
GROUP BY p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
SELECT p.product_name, sum(s.total_amount) AS total_sales,
	EXTRACT ('Year' FROM s.sale_date) AS year, 
	EXTRACT ('Month' FROM s.sale_date) AS month
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.product_name, EXTRACT ('Year' FROM s.sale_date), EXTRACT ('Month' FROM s.sale_date)
ORDER BY 
    p.product_name, year, month;

SELECT p.product_name, sum(s.total_amount) AS total_sales, 
	date_trunc ('Month', s.sale_date) AS month
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.product_name, date_trunc ('Month', s.sale_date)
ORDER BY 
    p.product_name, month;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
SELECT s.product_id, s.quantity_sold, i.stock_quantity
FROM ASSIGNMENT.sales s 
JOIN ASSIGNMENT.inventory i 
	ON s.product_id = i.product_id 
WHERE s.quantity_sold > 0 AND i.stock_quantity > 0
ORDER BY i.stock_quantity DESC ;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
SELECT *
FROM (
	SELECT *,
		dense_rank() OVER (ORDER BY t.total_purchases desc) AS purchases_ranking
	FROM (
		SELECT c.first_name, c.last_name, sum(s.total_amount) AS total_purchases
		FROM ASSIGNMENT.customers c 
		JOIN ASSIGNMENT.sales s 
			ON c.customer_id = s.customer_id 
		GROUP BY c.first_name, c.last_name
		) t
		) t2
WHERE purchases_ranking <= 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
SELECT count(DISTINCT sale_id) AS count_of_unique_products_sold
FROM ASSIGNMENT.sales s 
WHERE date_part('Year', s.sale_date ) = 2023;

-- 47. Write a query to find the products that have not been sold in the last 6 months.
SELECT p.product_name, s.quantity_sold
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
WHERE current_date - s.sale_date =  INTERVAL '6 months' AND s.quantity_sold = 0;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
SELECT p.product_id, p.product_name, sum(s.quantity_sold)
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON 	p.product_id = s.product_id 
WHERE p.price BETWEEN 200 AND 800
GROUP BY p.product_id, p.product_name; 

-- 49. Write a query to find the customers who spent the most money in the year 2023.
SELECT c.customer_id, c.first_name, c.last_name, SUM(s.total_amount) AS total_spent
FROM assignment.customers c
JOIN assignment.sales s
    ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 1;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
SELECT p.product_id, p.product_name, sum(s.quantity_sold) AS total_sales
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
WHERE p.price > 200
GROUP BY p.product_id, p.product_name
HAVING sum(s.quantity_sold) > 100;

-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?
SELECT c.customer_id ,c.first_name ,c.last_name, sum(s.total_amount) AS total_spent
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
GROUP BY c.customer_id ,c.first_name ,c.last_name
HAVING sum(s.total_amount) > 
	(SELECT AVG(t.total_spent_per_customer )
	FROM 
		(SELECT s.customer_id, sum(s.total_amount ) AS total_spent_per_customer
		FROM ASSIGNMENT.sales s 
		GROUP BY s.customer_id)t)
ORDER BY total_spent Desc;

-- 52. Which products are priced higher than the average price of all products?
	--- Version 1 assuming a product can have different prices
SELECT p.product_id ,p.product_name , sum(p.price )
FROM ASSIGNMENT.products p 
GROUP BY p.product_id ,p.product_name
HAVING sum(p.price) > (SELECT avg(t.total_price )
						FROM (SELECT p.product_id ,p.product_name ,sum(p.price) AS total_price 
								FROM ASSIGNMENT.products p
								GROUP BY p.product_id ,p.product_name) t);
	--- Version 2 Assuming each product has one single price
SELECT p.product_id ,p.product_name , p.price
FROM ASSIGNMENT.products p
WHERE p.price > (SELECT AVG(p.price )FROM ASSIGNMENT.products p );


-- 53. Which customers have never made a purchase?
SELECT c.customer_id ,c.first_name ,c.last_name  
FROM ASSIGNMENT.customers c
WHERE NOT EXISTS (SELECT s.customer_id 
	FROM ASSIGNMENT.sales s 
	WHERE s.customer_id = c.customer_id AND s.quantity_sold > 0);

-- 54. Which products have never been sold?
SELECT p.product_id ,p.product_name 
FROM ASSIGNMENT.products p 
WHERE NOT EXISTS (
	SELECT 1
	FROM ASSIGNMENT.sales s
	WHERE s.product_id = p.product_id 
	AND s.quantity_sold > 0);

-- 55. Which customer made the single most expensive purchase (total amount)?
SELECT c.customer_id, c.first_name, c.last_name, s.total_amount
FROM ASSIGNMENT.customers c
JOIN ASSIGNMENT.sales s
    ON c.customer_id = s.customer_id
ORDER BY s.total_amount DESC
LIMIT 1;

-- 56. Which products have total sales greater than the average total sales across all products?
SELECT p.product_name, sum(s.total_amount ) 
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.product_name 
HAVING sum(s.total_amount ) > 
	(SELECT AVG(t.total_sales_per_product )
	FROM (
		SELECT p.product_name, sum(s.total_amount ) AS total_sales_per_product
		FROM ASSIGNMENT.products p 
		JOIN ASSIGNMENT.sales s 
			ON p.product_id = s.product_id 
		GROUP BY p.product_name) t);

-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers
SELECT c.customer_id ,c.first_name ,c.last_name, c.registration_date  
FROM ASSIGNMENT.customers c 
WHERE c.registration_date < (SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE
							FROM ASSIGNMENT.customers c);

-- 58. Which products have a price higher than the average price within their own category?
SELECT p.product_name, p.price, p.category
FROM ASSIGNMENT.products p
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM ASSIGNMENT.products p2
    WHERE p2.category = p.category);

-- 59. Which customers have spent more than the customer with ID = 10?
SELECT c.customer_id ,c.first_name ,c.last_name, sum(s.total_amount ) AS total_spent_per_customer
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
GROUP BY c.customer_id ,c.first_name ,c.last_name
HAVING sum(s.total_amount ) > (SELECT sum(s.total_amount )
								FROM ASSIGNMENT.sales s
								WHERE s.customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
SELECT p2.product_id, p2.product_name, sum(s2.quantity_sold)
FROM ASSIGNMENT.products p2
JOIN ASSIGNMENT.sales s2
	ON p2.product_id = s2.product_id 
GROUP BY p2.product_id, p2.product_name
HAVING sum(s2.quantity_sold) > (
	SELECT AVG(t.total_quantity_sold_for_each_product )
	FROM (
		SELECT s.product_id ,p.product_name , sum(s.quantity_sold) AS total_quantity_sold_for_each_product
		FROM ASSIGNMENT.sales s 
		JOIN ASSIGNMENT.products p 
			ON s.product_id = p.product_id 
		GROUP BY s.product_id ,p.product_name) t);
	
-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
WITH totals_spent AS (
	SELECT c.customer_id ,c.first_name ,c.last_name , sum(s.total_amount ) AS total_per_customer
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name)
SELECT *
FROM totals_spent
ORDER BY totals_spent.total_per_customer desc
LIMIT 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
WITH total_quantity_sold AS (	
	SELECT p.product_id ,p.product_name , sum(s.quantity_sold ) AS total_quantity_sold
	FROM ASSIGNMENT.products p 
	JOIN ASSIGNMENT.sales s 
		ON p.product_id = s.product_id 
	GROUP BY p.product_id ,p.product_name
)
SELECT *
FROM total_quantity_sold
ORDER BY total_quantity_sold.total_quantity_sold desc 
LIMIT 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
WITH total_sales_per_category AS (
	SELECT p.category ,sum(s.total_amount) AS sales_per_category
	FROM ASSIGNMENT.products p 
	JOIN ASSIGNMENT.sales s 
		ON p.product_id = s.product_id 
	GROUP BY p.category 
	)
SELECT *
FROM total_sales_per_category 
ORDER BY sales_per_category DESC
LIMIT 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
WITH total_purchases_per_customer AS (	
	SELECT c.customer_id ,c.first_name ,c.last_name ,count(s.sale_id ) AS count_of_purchases
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
	)
SELECT *
FROM total_purchases_per_customer 
WHERE count_of_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
WITH total_quantity_sold_per_product AS (
	SELECT p.product_name, sum(s.quantity_sold ) AS sum_sold_per_product
	FROM ASSIGNMENT.products p 
	JOIN ASSIGNMENT.sales s 
		ON p.product_id = s.product_id 
	GROUP BY p.product_name 
),
average_quantity_sold AS (
	SELECT AVG(sum_sold_per_product) AS average_sold
	FROM total_quantity_sold_per_product
	)
SELECT *
FROM total_quantity_sold_per_product
WHERE sum_sold_per_product > (SELECT average_sold FROM average_quantity_sold);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
WITH total_spending_customer AS (
	SELECT c.customer_id ,c.first_name ,c.last_name ,sum(s.total_amount ) total_per_customer
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
	)
SELECT * 
FROM total_spending_customer 
WHERE total_per_customer > (SELECT avg(total_per_customer) FROM total_spending_customer);

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
WITH revenue_table AS (	
	SELECT p.product_id ,p.product_name ,sum(p.price * s.quantity_sold ) AS revenue_per_product
	FROM ASSIGNMENT.products p 
	JOIN ASSIGNMENT.sales s 
		ON p.product_id = s.product_id 
	GROUP BY p.product_id ,p.product_name
	)
SELECT *
FROM revenue_table 
ORDER BY revenue_per_product DESC;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
WITH monthly_sales_totals_table AS (
	SELECT EXTRACT(YEAR FROM s.sale_date) AS year,
        EXTRACT(MONTH FROM s.sale_date) AS month,
        SUM(s.total_amount) AS total_per_month
	FROM ASSIGNMENT.sales s 
	GROUP BY 
        EXTRACT(YEAR FROM s.sale_date),
        EXTRACT(MONTH FROM s.sale_date)
)
SELECT * 
FROM monthly_sales_totals_table
ORDER BY total_per_month DESC
LIMIT 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
WITH sales_per_prod_table AS (
	SELECT 
        p.product_id,
        p.product_name,
        COUNT(DISTINCT s.customer_id) AS customer_count
	FROM ASSIGNMENT.sales s 
	JOIN ASSIGNMENT.products p
		ON s.product_id = p.product_id 
	GROUP BY p.product_id, p.product_name
)
SELECT *
FROM sales_per_prod_table
WHERE customer_count > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
WITH total_quantity_sold_table AS (
	SELECT p.product_id ,p.product_name , 
			sum(s.quantity_sold ) AS quantity_sold_per_prod
	FROM ASSIGNMENT.sales s 
	JOIN ASSIGNMENT.products p 
		ON s.product_id = p.product_id 
	GROUP BY p.product_id ,p.product_name
)
SELECT *
FROM total_quantity_sold_table
WHERE quantity_sold_per_prod < (
		SELECT avg(quantity_sold_per_prod) 
		FROM total_quantity_sold_table);

-- WINDOW FUNCTION QUESTIONS


-- 71. Rank customers based on the total amount they have spent.
WITH spending_ranking_table AS (
	SELECT c.customer_id ,c.first_name ,c.last_name, sum (s.total_amount) AS total_spending_per_customer
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
)
SELECT *,
dense_rank() OVER (ORDER BY total_spending_per_customer desc) AS spending_ranking
FROM spending_ranking_table ;

-- 72. Rank products based on total quantity sold.
WITH total_products_sold_table AS (
	SELECT p.product_id ,p.product_name ,sum(s.quantity_sold ) AS products_sold
	FROM ASSIGNMENT.products p 
	JOIN ASSIGNMENT.sales s 
		ON p.product_id = s.product_id 
	GROUP BY p.product_id ,p.product_name
)
SELECT *, DENSE_RANK() OVER (ORDER BY products_sold DESC )
FROM total_products_sold_table;

-- 73. Identify the 3rd highest spending customer.
WITH total_customer_spending_table AS (
	SELECT c.customer_id ,c.first_name ,c.last_name ,sum(s.total_amount) AS customer_spending
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
),
	spending_ranking_table AS (
	SELECT *, DENSE_RANK() OVER (ORDER BY customer_spending Desc) AS spending_rankings
	FROM total_customer_spending_table
)
SELECT *
FROM spending_ranking_table
WHERE spending_rankings = 3;

-- 74. Identify the 2nd most expensive product.
WITH product_price_ranking_table AS (	
	SELECT p.product_id ,p.product_name , p.price,
		dense_rank() OVER (ORDER BY p.price desc) AS price_rank
	FROM ASSIGNMENT.products p
)
SELECT * 
FROM product_price_ranking_table
WHERE price_rank = 2;

-- 75. Show the ranking of products within each category based on price.
SELECT p.product_id ,p.product_name , p.category, p.price,
		dense_rank() OVER (PARTITION BY p.category ORDER BY p.price desc) AS price_rank
FROM ASSIGNMENT.products p;

-- 76. Show the ranking of customers based on the number of purchases they made.
WITH purchases_count AS (
	SELECT c.customer_id ,c.first_name ,c.last_name , 
			count(s.sale_id ) AS purchases_per_customer
	FROM assignment.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
)
SELECT *, dense_rank() over(ORDER BY purchases_per_customer desc)
FROM purchases_count;

-- 77. Show the running total of sales amounts ordered by sale_date.
SELECT s.sale_date , 
	SUM(s.total_amount ) OVER (ORDER BY s.sale_date asc) AS running_total_sales
FROM ASSIGNMENT.sales s ;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
SELECT s.sale_id ,s.sale_date , 
	lag(s.total_amount ) OVER (ORDER BY s.sale_date  asc) AS previous_amount
FROM ASSIGNMENT.sales s ;

-- 79. Show the next sale amount for each sale ordered by sale_date.
SELECT s.sale_id ,s.sale_date , 
	lead(s.total_amount ) OVER (ORDER BY s.sale_date  asc) AS next_amount
FROM ASSIGNMENT.sales s ;

-- 80. Divide customers into 4 groups based on total spending.
WITH total_spent_per_customer AS (
	SELECT c.customer_id ,c.first_name ,c.last_name , 
			sum(s.total_amount ) AS amount_per_customer
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
)
SELECT *, NTILE (4) OVER (ORDER BY amount_per_customer desc) AS group_of_4
FROM total_spent_per_customer; 

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
WITH multiple_categories AS (
	SELECT c.customer_id , count(DISTINCT p.category ) AS categories
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	JOIN ASSIGNMENT.products p 
		ON s.product_id = p.product_id 
	GROUP BY c.customer_id
)
SELECT *
FROM multiple_categories 
WHERE categories > 1;

-- 82. Which customers purchased products within 7 days of registering?
SELECT c.customer_id ,c.first_name ,c.last_name 
FROM ASSIGNMENT.customers c 
JOIN ASSIGNMENT.sales s 
	ON c.customer_id = s.customer_id 
WHERE s.sale_date BETWEEN c.registration_date AND c.registration_date + INTERVAL '7 days';

-- 83. Which products have lower stock remaining than the average stock quantity?
SELECT p.product_id ,p.product_name, p.stock_quantity  
FROM ASSIGNMENT.products p 
WHERE p.stock_quantity < (SELECT avg(p.stock_quantity ) AS Average_stock_quantity
FROM ASSIGNMENT.products p
);

-- 84. Which customers purchased the same product more than once?
SELECT c.customer_id, c.first_name, c.last_name, s.product_id, COUNT(*) AS purchase_count
FROM ASSIGNMENT.customers c
JOIN ASSIGNMENT.sales s
    ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, s.product_id
HAVING COUNT(*) > 1;

-- 85. Which product categories generated the highest total revenue?
WITH total_revenue_category AS (
SELECT p.category , sum(s.total_amount) AS Total_revenue
FROM ASSIGNMENT.products p 
JOIN ASSIGNMENT.sales s 
	ON p.product_id = s.product_id 
GROUP BY p.category
)
SELECT *, dense_rank()OVER (ORDER BY total_revenue desc) AS revenue_ranking
FROM total_revenue_category ;

-- 86. Which products are among the top 3 most sold products?
WITH aggregate_quantity_sold AS (
	SELECT p.product_name, sum(s.quantity_sold ) AS total_quantity_sold
	FROM ASSIGNMENT.products p 
	JOIN ASSIGNMENT.sales s 
		ON p.product_id = s.product_id
	GROUP BY p.product_name
),
product_sold_ranks AS (
	SELECT *, 
		dense_rank() OVER (ORDER BY total_quantity_sold desc) AS quantity_sold_ranking
	FROM aggregate_quantity_sold
)
SELECT *
FROM product_sold_ranks  
WHERE quantity_sold_ranking <= 3;

-- 87. Which customers purchased the most expensive product?
WITH price_ranking_table AS (	
	SELECT  s.customer_id, s.product_id ,p.product_name , p.price,
		dense_rank()OVER (ORDER BY p.price desc) AS price_rankings
	FROM ASSIGNMENT.sales s 
	JOIN ASSIGNMENT.products p 
		ON p.product_id = s.product_id 
)
SELECT c.customer_id ,c.first_name ,c.last_name 
FROM price_ranking_table pr 
JOIN ASSIGNMENT.customers c 
	ON pr.customer_id = c.customer_id 
WHERE pr.price_rankings = 1;
	
-- 88. Which products were purchased by the highest number of unique customers?
-- 88. Which products were purchased by the highest number of unique customers?
WITH product_customer_count AS (
    SELECT 
        p.product_id,
        p.product_name,
        COUNT(DISTINCT s.customer_id) AS unique_customers
    FROM ASSIGNMENT.products p
    JOIN ASSIGNMENT.sales s 
        ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM (
    SELECT *,
        DENSE_RANK() OVER (ORDER BY unique_customers DESC) AS ranking
    FROM product_customer_count
) ranked
WHERE ranking = 1;

-- 89. Which customers made purchases above the average sale amount?
WITH  aggregate_total_amt_table AS (
	SELECT c.customer_id ,c.first_name ,c.last_name ,sum(s.total_amount ) AS sum_total_amount
	FROM ASSIGNMENT.customers c 
	JOIN ASSIGNMENT.sales s 
		ON c.customer_id = s.customer_id 
	GROUP BY c.customer_id ,c.first_name ,c.last_name
)
SELECT *
FROM aggregate_total_amt_table 
WHERE sum_total_amount > (
	SELECT avg(sum_total_amount)
	FROM aggregate_total_amt_table
);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
-- 90. Which customers purchased more products than the average quantity purchased per customer?

WITH customer_quantity AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(s.quantity_sold) AS total_quantity
    FROM ASSIGNMENT.customers c
    JOIN ASSIGNMENT.sales s 
        ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT *
FROM customer_quantity
WHERE total_quantity > (
    SELECT AVG(total_quantity)
    FROM customer_quantity
);

-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?

-- 92. Which products contribute to the top 50% of total revenue?

-- 93. Which customers made purchases in consecutive months?

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

-- 95. Which customers have spending above the average spending of their membership tier?

-- 96. Which products have higher sales than the average sales within their category?

-- 97. Which customer made the largest single purchase relative to their total spending?

-- 98. Which products rank among the top 3 most sold products within each category?

-- 99. Which customers are tied for the highest total spending?

-- 100. Which products generated sales every year present in the dataset?

-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN

-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN

-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN

-- 104. Display each customer’s registration year from the registration_date

-- 105. Count how many customers registered in each year

-- 106. Find the total sales amount for each month

-- 107. Show all sales made in the year 2023

-- 108. Find the total sales amount for each year

-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)

-- 110. Display each sale and extract the year and month from the sale date

-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE

-- 112. Find customers who do not have an email address

-- 113. Find products that have never been sold using a subquery

-- 114. Find customers who have not made any purchases using a subquery

-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN

-- 116. Create a PostgreSQL function/procedure that takes a minimum revenue as input and returns all products whose total sales exceed that value

-- 117. Create a PostgreSQL function/procedure that takes a customer_id as input and returns the total amount spent by that customer

-- 118. Create a PostgreSQL function/procedure that takes a start_date and end_date as input and returns the number of orders made within that date range

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table 

-- 120. Create an index on the product_id column in the sales table to improve join performance

-- 121. Create an index on the registration_date column in the customers table to improve filtering by date

-- 122. Write a transaction that inserts a new sale using sale_id, customer_id, product_id, quantity_sold, sale_date, and total_amount, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together

-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid

-- 124. Create a view that shows total revenue per product

-- 125. Create a view that shows each customer and their total spending

-- 126. Use UNION to combine a list of all customer first names and product names into a single column

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN

-- 129. Use NOT EXISTS to find customers who have not made any purchases

-- 130. Cast the price column to an integer and display it alongside the original price

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format

-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;

-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;

-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- SELECT *
-- FROM assignment.sales s
-- JOIN assignment.products p
--   ON s.customer_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any

-- 136. Trim any leading or trailing spaces from customer first names if any

-- 137. Convert all customer emails to lowercase if any

-- 138. Replace empty strings in phone numbers with NULL if any

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any



