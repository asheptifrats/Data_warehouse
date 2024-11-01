WITH order_counts AS (
    SELECT
        sc.customer_id,
        sc.customer_name,
        COUNT(o."Order.ID") AS order_count
    FROM {{ ref('stg_customers') }} AS sc
    JOIN {{ ref('orders') }} AS o ON sc.customer_id = o."Customer.ID"
    GROUP BY
        sc.customer_id,
        sc.customer_name
)

SELECT
    customer_id,
    customer_name,
    order_count
FROM order_counts
ORDER BY order_count DESC
LIMIT 1