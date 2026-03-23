ETL Decisions
Decision 1 — Standardizing Date Formats
Problem:  
The raw data contained inconsistent date formats such as 29/08/2023, 12-12-2023, and 2023-02-05. This inconsistency made it impossible to reliably join on dates or group by month/year.

Resolution:  
All dates were converted into a single ISO format (YYYY-MM-DD). For example, 29/08/2023 and 12-12-2023 were transformed into 2023-08-29 and 2023-12-12. This ensured consistency in the dim_date table and allowed accurate time-based analysis.

Decision 2 — Normalizing Category Casing
Problem:  
The category field had inconsistent casing: some rows used electronics, others Electronics, and some Groceries vs Grocery. This inconsistency would fragment aggregations by category.

Resolution:  
All category values were standardized to Title Case (e.g., Electronics, Clothing, Grocery). This way, queries grouping by category produce correct totals without duplication caused by case sensitivity.

Decision 3 — Handling Missing Store City Values
Problem:  
Several rows had missing store_city values (e.g., Mumbai Central, NULL). This would break the foreign key relationship in dim_store and distort store-level reporting.

Resolution:  
Where possible, missing store_city values were inferred from the store_name (e.g., Mumbai Central → Mumbai). If inference was not possible, the record was flagged and assigned a placeholder value like "Unknown". This preserved referential integrity and ensured no fact rows were lost.