-- This query find the total recalls per month in 2024 and in 2025

SELECT
    YEAR(recall_date) AS recall_year,
    DATENAME(MONTH, recall_date) AS recall_month,
    MONTH(recall_date) AS month_number,
    COUNT(*) AS recall_count
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024, 2025)
GROUP BY
    YEAR(recall_date),
    DATENAME(MONTH, recall_date),
    MONTH(recall_date)
ORDER BY recall_year, month_number;
