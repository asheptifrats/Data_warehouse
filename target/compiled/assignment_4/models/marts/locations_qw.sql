SELECT
    TRIM(s."City") AS city,
    TRIM(s."State") AS state,
    TRIM(s."Region") AS region,
    TRIM(s."Country") AS country,
    COUNT(o."Order.ID") AS order_count
FROM "assignment_4"."main"."stg_locations" AS s
LEFT JOIN "assignment_4"."main"."orders" AS o ON s."Order.ID" = o."Order.ID"
WHERE
    TRIM(s."City") = 'Los Angeles' AND
    TRIM(s."State") = 'California' AND
    TRIM(s."Region") = 'West' AND
    TRIM(s."Country") = 'United States'
GROUP BY
    s."City",
    s."State",
    s."Region",
    s."Country"
ORDER BY
    order_count DESC