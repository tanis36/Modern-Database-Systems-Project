

WITH StoreSales AS (
    SELECT
        s.store_id,
        p.product_name,
        COUNT(si.sale_item_id) AS total_items_sold
    FROM
        "Sales" AS s
    JOIN
        "Sale Item" AS si ON s.sale_id = si.sale_id
    JOIN
        "Products" AS p ON si.upc_code = p.upc_code
    GROUP BY
        s.store_id, p.product_name
),
RankedSales AS (
    SELECT
        ss.store_id,
        ss.product_name,
        ss.total_items_sold,
        RANK() OVER (PARTITION BY ss.store_id ORDER BY ss.total_items_sold DESC) AS item_rank
    FROM
        StoreSales AS ss
)
SELECT
    s.store_name,
    rs.product_name,
    rs.total_items_sold
FROM
    RankedSales AS rs
JOIN
    "Stores" AS s ON rs.store_id = s.store_id
WHERE
    rs.item_rank <= 20
ORDER BY
    rs.store_id, rs.item_rank;
