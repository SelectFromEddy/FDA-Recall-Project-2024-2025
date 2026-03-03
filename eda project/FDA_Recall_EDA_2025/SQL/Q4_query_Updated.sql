--- This query shows total recalls by state in 2024 and 2025 with CTE and case statements

WITH recall_state_year_counts AS (
select 
	recall_state,
	YEAR(recall_date) AS recall_year,
	COUNT(*) AS recall_count
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024,2025)
GROUP BY 
	recall_state, YEAR(recall_date)
	)
SELECT
	recall_state,
SUM(CASE WHEN recall_year = 2024 THEN recall_count ELSE 0 END) AS recalls_2024,
SUM(CASE WHEN recall_year = 2025 THEN recall_count ELSE 0 END) AS recalls_2025,
SUM(CASE WHEN recall_year = 2025 THEN recall_count ELSE 0 END) -
SUM(CASE WHEN recall_year = 2024 THEN recall_count ELSE 0 END) AS yoy_change
FROM recall_state_year_counts
GROUP BY recall_state
ORDER BY yoy_change DESC;
