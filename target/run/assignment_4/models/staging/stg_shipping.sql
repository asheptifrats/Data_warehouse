
  
  create view "assignment_4"."main"."stg_shipping__dbt_tmp" as (
    SELECT
    "Product.ID" AS product_id,
    TRIM("Product.Name") AS product_name,
    "Category" AS category,
    "Sub.Category" AS sub_category
FROM "assignment_4"."main"."products"
  );
