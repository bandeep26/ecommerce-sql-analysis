USE ShopEasy;

--ALL csv files imported from the folder SQLData located at C drive

-- Insert customers (Step 1: Run this first)
BULK INSERT customers
FROM 'C:\SQLData\customers.csv'      
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


-- Insert Products (Step 2: Run this alone)
BULK INSERT products
FROM 'C:\SQLData\products.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


-- Insert orders (Step 3: Run this alone)
BULK INSERT orders
FROM 'C:\SQLData\orders.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


-- Check the values for each table
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;