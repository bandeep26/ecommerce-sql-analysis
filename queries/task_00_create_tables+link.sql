--Create Table customers
CREATE TABLE customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(100),
	city VARCHAR(50),
	email VARCHAR(100),
	signup_date DATE
);

--Create Table products
CREATE TABLE products (
	product_id INT PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price DECIMAL(10,2)
);   

--Create Table orders + Link it with customers & products tables using Foreign Key
CREATE TABLE orders(
	order_id INT PRIMARY KEY,
	customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
	product_id INT FOREIGN KEY REFERENCES products(product_id),
	quantity INT,
	order_date DATE,
	status VARCHAR(20)
);