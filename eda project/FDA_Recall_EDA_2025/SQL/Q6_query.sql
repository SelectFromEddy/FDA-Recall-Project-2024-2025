--- This query shows the top ten recall reasons in 2024 and 2025

SELECT TOP 10
    YEAR(recall_date) AS recall_year,
    recall_reason,
    COUNT(*) AS recall_count
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024, 2025)
GROUP BY
    YEAR(recall_date),
    recall_reason
ORDER BY recall_count DESC;
