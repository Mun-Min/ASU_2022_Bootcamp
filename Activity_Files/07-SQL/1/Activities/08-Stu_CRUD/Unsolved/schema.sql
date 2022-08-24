DROP TABLE IF EXISTS sales;

-- Create table and view column datatypes
CREATE TABLE sales (
  sales_id SERIAL PRIMARY KEY,
  payment_id VARCHAR(30) NOT NULL,
  mortgage_id VARCHAR(30),
  loan_amount INT,
  loan_date DATE
);