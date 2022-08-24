-- Query and return all data from sales table
SELECT *
FROM sales;

-- Query and return the sales records with loan amounts less than $300,000
SELECT *
FROM sales
where loan_amount  < 300000;

-- Query and find the average loan amount of all the sales records
SELECT AVG(loan_amount) FROM sales

-- Update the loan amount for sales_id = 33 to $423,212
UPDATE sales
SET loan_amount = 423212
WHERE sales_id = 33;

-- Sort table so that sales_id: 33 isn't at the bottom of the table
SELECT * 
FROM sales
ORDER BY sales_id ASC 

-- Query and add a new boolean column loan_distributed that defaults to True
ALTER TABLE sales
ADD COLUMN loan_distributed BOOLEAN default TRUE;

-- Query and insert a new record into the sales table where sales_id is 101, payment_id is 101, mortgage_id is 2, loan_amount is $734,544, and the loan date is 1995-10-05
INSERT INTO sales(sales_id, payment_id, mortgage_id, loan_amount, loan_date)
VALUES(101, '101', '2', 734544, '1955-10-05');

-- Query and delete the sales record where sales_id is 72
DELETE FROM sales where sales_id = 72;