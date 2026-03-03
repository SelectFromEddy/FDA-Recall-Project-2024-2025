-- This query breaks down FDA recalls by recall class for the years 2024 and 2025.

SELECT
    YEAR(recall_date) AS recall_year,
    recall_class,
    COUNT(*) AS recall_count
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024, 2025)
GROUP BY YEAR(recall_date), recall_class
ORDER BY recall_year, recall_count DESC;