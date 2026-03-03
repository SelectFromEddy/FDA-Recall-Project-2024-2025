#Food Recall EDA(Comparison) project (2025)  Started 01/12/2026

## Executive Summary
Between 2024 and 2025, total FDA recalls remained pretty stable (1,539 to 1,576, +2.4%), but severity increased as Class I recalls rose from 667 to 770, representing a larger share of total recalls. Seasonal spikes were observed, with June 2025 reaching 303 recalls. While overall recall volume is steady, the shift toward higher-risk classifications and increased active recalls suggests growing public health risk exposure.

## Project Overview
This project analyzes FDA Product recalls from 2024 - 2025 to identify trends, severity levels, patterns across time and geography

## Business Problem
Food recalls pose significant public health and regulatory challenges.
This project aims to analyze FDA food recall data to identify trends in
recall frequency, severity, timing, and geography in order to support
risk-based decision-making and proactive food safety monitoring.


## Stakeholder/Audience
-This analysis is relevant to public health regulators, food manufacturers, 
and safety analysts who monitor food recall trends to identify risks, 
improve compliance, and protect consumer health.

## Dataset
- Source: FDA recall dashboard
- Time period: 2024 - 2025
- Datatype: Public government data
- Grain: One row = One recall event 

## Objectives
- Understanding recall frequency in 2024 - 2025 (comparison) 
- Did the most common recall class change between years?
- How did monthly recall trends differ between 2024 and 2025?
- Which states saw the largest increase or decrease in recalls?
- How did recall status improve from 2024 to 2025?
- Did the leading recall reasons change year over year?

## Tools used
- Excel (data cleaning)
- SQL (Aggregations, Year-over-year comparisons, CTE, windows function)
- Tableau (Visualization)

## Data Pipeline / Workflow
- Pulled raw FDA recall data from public dashboard
- Cleaned and standardized data in Excel
- Exported cleaned dataset for SQL analysis
- Used SQL (aggregations, CTEs, windows functions, year-over-year comparisons) to analyze trends
- Built visualizations in Tableau
- Exported visualizations as images for reporting

## Data Cleaning Summary 
- Removed unnecessary columns
- Standardized text fields
- Fixed date formats 
- Created recall month field
- Made columns SQL ready

## Key findings
- Potential contamination recalls outnumber confirmed cases(8 out of the top 10 recall reasons 
were potential contamination cases). 
- Recalls have increased from 2024-2025(from 1,539 to 1,576 recalls suggesting a slight uptrend in recall volume).
- Class I recalls increased in 2025 despite only a slight overall increase in total recalls(from 667 to 770 recalls, 15.4% increase).
- Recall activity peaks mid-year rather than end-year(recalls peaking in June 2025 with 303 recalls).

## Metrics (The important numbers)
- Total recalls 
2024 - 1539 total recalls
2025 - 1576 total recalls 

- Recall count by class (Year over Year)
2024 - Class II, 805 recalls 
2024 - Class I, 667 recalls
2024 - Class III, 67 recalls 
2025 - Class I, 770 recalls 
2025 - Class II, 718 recalls
2025 - Class III, 88 recalls

- Monthly recall AVG
2024 - 128 on average
2025 - 131 on average

- Yearly average of recalls by state
2024 - 34 = monthly average
2025 - 34 = monthly average

## Why It Matters
- Although total recall volume changed only slightly, the increase in high-risk Class I recalls suggests greater potential public health exposure, making food safety monitoring more important.

## Limitations 
- Data only includes classified recalls.
- Dataset updated weekly and subject to change.
- Only two years of data.

## Recommendations 
- Increase monitoring during peak recall months (June 2025 recorded 303 recalls, the highest monthly spike).
- Prioritize inspections for contamination-related issues (8 of the top 10 recall reasons were potential contamination cases).
- Allocate more resources to Class I recall prevention (Class I recalls increased from 667 to 770 year-over-year).

