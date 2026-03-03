--- This query gives the top ten recall reasons using windows functions and CTE, making it more readable and understandable in excel 

WITH recall_reasons as (
SELECT 
	YEAR(recall_date) as recall_year,
	recall_reason,
	COUNT(*) AS total_recalls,
	RANK() OVER(PARTITION BY YEAR(recall_date) ORDER BY Count(*) DESC ) AS reason_rank
FROM fda_recalls
WHERE YEAR(recall_date) IN (2024,2025) 
GROUP BY YEAR(recall_date), recall_reason
	)
	
SELECT 
	recall_year,
	recall_reason,
	total_recalls
FROM recall_reasons
WHERE reason_rank <=5
ORDER BY recall_year, recall_reason DESC;
    