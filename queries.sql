CREATE TABLE orders AS
SELECT
    `Order ID` AS order_id,
    STR_TO_DATE(`Order Date`, '%d-%m-%Y') AS order_date,
    STR_TO_DATE(`Ship Date`, '%d-%m-%Y') AS ship_date,
    `Ship Mode` AS ship_mode,
    `Customer ID` AS customer_id,
    `Product ID` AS product_id,
    Sales,
    Quantity,
    Discount,
    Profit,
    Returned
FROM supplychain_raw;

CREATE TABLE products AS
SELECT DISTINCT
    `Product ID` as product_id,
    `Category` as category,
    `Sub-Category` as sub_category,
    `Product Name` as product_name
FROM supplychain_raw;

CREATE TABLE customers AS
SELECT DISTINCT
    `Customer ID` as customer_id,
    `Customer Name` as customer_name,
    `Segment` as segment,
    `Country` as country,
    `City` as city,
    `State` as state,
    `Region` as region
FROM supplychain_raw;

CREATE TABLE shipping AS
SELECT
    `Order ID` AS order_id,
    STR_TO_DATE(`Ship Date`, '%d-%m-%Y') AS ship_date,
    `Ship Mode` AS ship_mode,
    DATEDIFF(
        STR_TO_DATE(`Ship Date`, '%d-%m-%Y'),
        STR_TO_DATE(`Order Date`, '%d-%m-%Y')
    ) AS delivery_days
FROM supplychain_raw;

UPDATE shipping s
JOIN orders o ON s.order_id = o.order_id
SET s.order_date = STR_TO_DATE(o.order_date, '%d-%m-%Y');

-- Main view that you import in the power Bi
CREATE OR REPLACE VIEW retail_logistics_dashboard AS
SELECT 
    o.order_date,
    o.ship_date,
    c.region,
    c.city,
    c.state,
    p.category,
    o.sales,
    o.profit,
    o.quantity,
    o.discount,
    o.returned,
    DATEDIFF(o.ship_date, o.order_date) AS delivery_days
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
