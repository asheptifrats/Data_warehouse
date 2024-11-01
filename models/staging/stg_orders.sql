SELECT
    "Order.ID" AS order_id,
    "Customer.ID" AS customer_id,
    "Product.ID" AS product_id,
    CAST("Order.Date" AS DATE) AS order_date,
    "Order.Priority" AS order_priority,
    CAST("Quantity" AS INTEGER) AS quantity,
    CAST("Discount" AS FLOAT) AS discount,
    CAST("Sales" AS FLOAT) AS sales,
    CAST("Profit" AS FLOAT) AS profit,
    "Market" AS market,
    "Market2" AS region,
    CAST("weeknum" AS INTEGER) AS weeknum,
    CAST("Year" AS INTEGER) AS year
FROM {{ ref('orders') }}