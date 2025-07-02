
-- Enable loading from local file
SET GLOBAL local_infile = 1;

-- Create the database (optional)
CREATE DATABASE IF NOT EXISTS salesdb;
USE salesdb;

-- Drop the table if it already exists
DROP TABLE IF EXISTS online_sales;

-- Create the table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Load data from CSV
-- Ensure 'online_sales.csv' is in a directory accessible to the MySQL client or server
LOAD DATA LOCAL INFILE 'online_sales.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
