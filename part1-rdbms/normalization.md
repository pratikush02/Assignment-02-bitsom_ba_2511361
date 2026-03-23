**Task 1.1. Anomaly Analysis**



1. Insert Anomaly - An insert anomaly occurs when you cannot add new information without including unrelated data.

Example: If you want to add a new sales representative (Example, "SR06 – Molly Paul") but they haven’t made any sales yet, you cannot insert their details into this table without also creating a dummy order.

Relevant Columns: Column L "sales\_rep\_id".



2. Update Anomaly
An update anomaly occurs when changing one piece of information requires multiple updates across rows.

Example: Sales rep Deepak Joshi (SR01) is listed with office address "Mumbai HQ, Nariman Point, Mumbai - 400021" in many rows (e.g., ORD1114, ORD1153, ORD1091). If the office address changes, you must update it in every row where SR01 appears.

Relevant Row: Row # 3 - ORD1114 → sales\_rep\_name - "Deepak Joshi with Office Address "Mumbai HQ, Nariman Point, Mumbai - 400021"

Reason for Update Anomaly: Redundant storage of office address across multiple rows leads to inconsistency if not updated everywhere.



3. Delete Anomaly - A delete anomaly occurs when deleting a record causes unintended loss of valuable information.

Example: If you delete order ORD1027 (Priya Sharma buying a Notebook), you also lose the only record of Anita Desai’s office address "Delhi Office, Connaught Place, New Delhi - 110001" if no other orders exist for her.

Relevant Row: ORD1027 → Anita Desai, "Delhi Office, Connaught Place, New Delhi - 110001"

Reason for Update Anomaly: Deleting an order removes both the order details and the sales rep’s office information, even though the office data is independent of the order.





**Subjective Question**



Manager’s view that “keeping everything in one table is simpler” overlooks the practical issues revealed in the orders\_flat.csv dataset. While a flat file may seem straightforward, it introduces serious anomalies that compromise data integrity. For example, sales rep Deepak Joshi (SR01) appears in dozens of rows with the same office address. If the office relocates, every row must be updated; missing one leads to inconsistent results in queries like counting unique customers handled. This is a classic update anomaly. Similarly, adding a new product such as a printer is impossible without creating a dummy order, because product existence is tied to orders in the flat file. That’s an insert anomaly. Deleting an order, such as ORD1027 for Priya Sharma, could also erase the only record of Anita Desai’s office address, demonstrating a delete anomaly.



Beyond anomalies, queries themselves become unreliable. In Q1, customer details like emails are repeated across rows; a typo would split totals across duplicate identities. In Q2, product prices are scattered across many rows, so one incorrect entry corrupts totals. In contrast, normalization ensures a single source of truth for customers, products, and sales reps, making queries consistent and trustworthy.



In short, the flat file’s apparent simplicity hides hidden costs: redundancy, inconsistency, and data loss. Normalization is not over-engineering; it is a safeguard that reduces maintenance effort, ensures accuracy, and supports scalability. The dataset itself proves that separating customers, products, sales reps, orders, and order items into distinct tables is essential for reliable reporting and decision-making.





