SELECT
    "product_id" AS product_id,
    "product_name" AS product_name,
    "category" AS category,
    "sub_category" AS sub_category
FROM "assignment_4"."main"."stg_products"
WHERE "category" = 'Office Supplies'