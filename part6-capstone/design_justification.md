**Design Justification**



**## Storage Systems**



\- Predict Readmission Risk: A centralized Data Warehouse (e.g., Amazon Redshift, Snowflake) stores historical EHR data, treatment records, and discharge summaries. Warehouses are optimized for analytical queries and model training, making them ideal for AI-based risk prediction.



\- Natural Language Patient Queries: A Query Engine (e.g., Elasticsearch or Azure Cognitive Search) indexes structured and unstructured patient data. It enables semantic search and NLP-based querying, allowing doctors to ask questions like “Has this patient had a cardiac event before?” and retrieve relevant context.



\- Monthly Management Reports: A Reporting Database (e.g., PostgreSQL or Google BigQuery) aggregates data from billing, occupancy logs, and departmental metrics. It supports scheduled ETL jobs and dashboard tools like Tableau or Power BI for generating monthly insights.



\- Real-Time ICU Vitals: A Real-Time Database (e.g., InfluxDB, Apache Kafka + TimescaleDB) ingests and stores streaming vitals from ICU monitors. These systems are designed for high-throughput, low-latency data ingestion and time-series analysis.



\---



\## OLTP vs OLAP Boundary



The OLTP boundary ends at the operational systems: EHR, billing, ICU monitors, and staff interfaces. These systems handle real-time transactions—patient updates, billing entries, and vitals streaming.



The OLAP boundary begins at the data ingestion layer. Once data flows into the warehouse, reporting database, or query engine, it’s transformed for analysis. AI models, dashboards, and NLP interfaces operate entirely within this analytical zone, ensuring separation of concerns and performance optimization.



This boundary is enforced via ETL pipelines and streaming connectors that decouple transactional workloads from analytical processing.



\---



\## Trade-offs



A key trade-off is balancing real-time performance with long-term analytical depth. Streaming ICU data into a real-time database enables immediate alerts and monitoring, but storing high-frequency vitals over weeks or months can strain storage and query performance.



To mitigate this, we implement tiered storage:

\- Recent data (e.g., last 48 hours) stays in high-speed real-time storage.

\- Older data is downsampled and archived in the data warehouse for trend analysis.



This approach preserves responsiveness for clinicians while enabling long-term insights for management and research.



