
  
    
    

    create  table
      "assignment_4"."main"."orders_qw__dbt_tmp"
  
    as (
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
FROM "assignment_4"."main"."stg_orders"
ORDER BY order_date ASC
LIMIT 5
    );
  
  