
  
    
    

    create  table
      "assignment_4"."main"."the_most_popular_customer__dbt_tmp"
  
    as (
      WITH order_counts AS (
    SELECT
        sc.customer_id,
        sc.customer_name,
        COUNT(o."Order.ID") AS order_count
    FROM "assignment_4"."main"."stg_customers" AS sc
    JOIN "assignment_4"."main"."orders" AS o ON sc.customer_id = o."Customer.ID"
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
    );
  
  