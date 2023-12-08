

WITH StoresSellingCoke AS (
    SELECT s.store_id, si.quantity
    FROM "Stores" AS s
    JOIN "Sales" AS sa ON s.store_id = sa.store_id
    JOIN "Sale Item" AS si ON sa.sale_id = si.sale_id
    JOIN "Products" AS p ON si.upc_code = p.upc_code
    JOIN "Brands" AS b ON p.brand_name = b.brand_name
    WHERE b.brand_name = 'Coca-Cola'
),
StoresSellingPepsi AS (
    SELECT s.store_id, si.quantity
    FROM "Stores" AS s
    JOIN "Sales" AS sa ON s.store_id = sa.store_id
    JOIN "Sale Item" AS si ON sa.sale_id = si.sale_id
    JOIN "Products" AS p ON si.upc_code = p.upc_code
    JOIN "Brands" AS b ON p.brand_name = b.brand_name
    WHERE b.brand_name = 'Pepsi'
)
SELECT s.store_name
FROM "Stores" AS s
JOIN StoresSellingCoke AS ssc ON s.store_id = ssc.store_id
JOIN StoresSellingPepsi AS ssp ON s.store_id = ssp.store_id
WHERE ssc.quantity > ssp.quantity
GROUP BY s.store_name