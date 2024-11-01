SELECT
    o."Order.ID",
    s."Ship.Date",
    s."Ship.Mode",
    s."Shipping.Cost"
FROM "assignment_4"."main"."stg_shipping" AS s
LEFT JOIN "assignment_4"."main"."stg_orders" AS o ON s."Order.ID" = o."Order.ID"
ORDER BY s."Shipping.Cost" DESC
LIMIT 5