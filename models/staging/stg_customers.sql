SELECT
        DISTINCT "Customer.ID" AS customer_id,
        TRIM("Customer.Name") AS customer_name,
        TRIM(LOWER("Segment")) AS segment
FROM {{ ref('customers') }}