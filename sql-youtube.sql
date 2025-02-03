-- JOIN multiple tables
USE sql_store;

SELECT 
    o.order_id, 
    o.order_date, 
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_statuses os 
    ON o.status = os.order_status_id;

-- select name of the client + payment method (string), main table - payments (JOIN clients, payment_methods)