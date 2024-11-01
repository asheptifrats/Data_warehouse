SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    order_priority,
    quantity,
    discount,
    sales,
    profit,
    market,
    region,
    weeknum,
    year
FROM {{ ref('stg_orders') }}
ORDER BY order_date ASC
LIMIT 5
