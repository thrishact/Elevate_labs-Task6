CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales VALUES
(1,'2023-01-05',1200,101),
(2,'2023-01-18',1800,102),
(3,'2023-02-07',1500,103),
(4,'2023-02-20',2200,104),
(5,'2023-03-10',2500,105),
(6,'2023-03-25',1700,101),
(7,'2023-04-08',3000,106),
(8,'2023-04-22',2800,102),
(9,'2023-05-15',3200,107),
(10,'2023-06-05',4000,108),
(11,'2024-01-12',3500,109),
(12,'2024-01-28',4200,110),
(13,'2024-02-14',3800,111),
(14,'2024-03-09',4600,112),
(15,'2024-04-21',5000,113);

SELECT * FROM online_sales;

SELECT 
    order_id,
    EXTRACT(MONTH FROM order_date) AS month
FROM online_sales;


SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month
FROM online_sales
GROUP BY year, month;

SELECT
    SUM(amount) AS total_revenue
FROM online_sales;


SELECT COUNT(DISTINCT order_id) AS order_volume
FROM online_sales;

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 5;


