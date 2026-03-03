-- This query analyzes the total number of FDA recalls per year for 2024 and 2025.

SELECT
    YEAR(recall_date) AS recall_year,
    COUNT(*) AS total_recalls
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024, 2025)
GROUP BY YEAR(recall_date)
ORDER BY recall_year;
