WITH milkOrders AS (
    SELECT sale_id
    FROM "Sale Item" AS si
    JOIN "Products" AS pd ON pd.upc_code = si.upc_code 
    WHERE pd.product_name = 'Milk'
    GROUP BY sale_id
)
SELECT product_type, SUM(si.quantity) AS s
FROM "Sale Item" AS si
JOIN milkOrders AS mo ON si.sale_id = mo.sale_id
JOIN "Products" AS pd ON si.upc_code = pd.upc_code
WHERE pd.product_name != 'Milk'
GROUP BY product_type
ORDER BY s DESC
OFFSET 0 ROWS FETCH FIRST 3 ROWS ONLY;