--- This query gives total recall status in 2024 and in 2025 

SELECT
    YEAR(recall_date) AS recall_year,
    status,
    COUNT(*) AS recall_count
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024, 2025)
GROUP BY
    YEAR(recall_date),
    status
ORDER BY recall_year, recall_count DESC;
