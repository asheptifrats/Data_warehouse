
  
  create view "assignment_4"."main"."stg_customers__dbt_tmp" as (
    SELECT
        DISTINCT "Customer.ID" AS customer_id,
        TRIM("Customer.Name") AS customer_name,
        TRIM(LOWER("Segment")) AS segment
FROM "assignment_4"."main"."customers"
  );
