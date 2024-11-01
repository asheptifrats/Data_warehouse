SELECT
    o."Order.ID",
    s."Ship.Date",
    s."Ship.Mode",
    s."Shipping.Cost"
FROM {{ ref('stg_shipping') }} AS s
LEFT JOIN {{ ref('stg_orders') }} AS o ON s."Order.ID" = o."Order.ID"
ORDER BY s."Shipping.Cost" DESC
LIMIT 5
