-- View our tables
SELECT * FROM customer;
SELECT * FROM customer_email;
SELECT * FROM customer_phone;

-- Attempt to insert a value with no foreign key for referential integrity
INSERT INTO customer_email
  (email, customer_id)
VALUES
  ('lucystern@gmail.com', 5);

-- Join Tables
SELECT customer.first_name, customer.last_name, email.email, phone.phone
FROM customer 
JOIN customer_email AS email
  ON customer.customer_id = email.customer_id
JOIN customer_phone AS phone
  ON email.customer_id = phone.customer_id;