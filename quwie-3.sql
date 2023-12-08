WITH yearlySales AS (
    SELECT *
    FROM "Sales" as sa
    WHERE date_part('year', sa.date) = date_part('year', CURRENT_DATE)
)
SELECT st.store_name, count(*) as c
FROM "Stores" as st
JOIN yearlySales as y ON st.store_id = y.store_id 
GROUP BY st.store_id
ORDER BY c DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;