--- This query shows total recalls by state in 2024 and 2025


    SELECT
        recall_state,
        YEAR(recall_date) AS recall_year,
        COUNT(*) AS recall_count
    FROM fda_recalls
    WHERE YEAR(recall_date) IN (2024, 2025)
    GROUP BY recall_state, YEAR(recall_date)
    ORDER BY recall_year, recall_count desc;
