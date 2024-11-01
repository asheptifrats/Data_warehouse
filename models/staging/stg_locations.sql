SELECT
    DISTINCT
    TRIM("City") AS city,
    TRIM("State") AS state,
    TRIM("Region") AS region,
    TRIM("Country") AS country,
    "Order.ID" AS order_id
FROM {{ ref('locations') }}