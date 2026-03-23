**Question - Architecture Recommendation**

"A fast-growing food delivery startup collects GPS location logs, customer text reviews, payment transactions, and restaurant menu images. Which storage architecture would you recommend — Data Warehouse, Data Lake, or Data Lakehouse? Give at least 3 specific reasons for your choice."



**Answer**

For a fast-growing food delivery startup handling diverse data types—GPS logs, customer reviews, payment transactions, and restaurant images—the most suitable architecture is a \*\*Data Lakehouse\*\*. This hybrid approach combines the flexibility of a data lake with the structured analytics of a data warehouse, making it ideal for such varied workloads.



First, a lakehouse supports \*\*multi-format data ingestion\*\*. GPS logs and menu images are semi-structured or unstructured, while payment transactions are highly structured. A pure data warehouse struggles with unstructured data, while a data lake lacks the query optimization needed for transactional analysis. The lakehouse bridges this gap seamlessly.



Second, it enables \*\*advanced analytics and machine learning\*\* directly on raw data. Customer reviews (text) and GPS logs can be used for sentiment analysis, delivery route optimization, and fraud detection. A warehouse alone would require preprocessing and external ML pipelines, whereas a lakehouse allows unified storage and computation.



Third, a lakehouse provides \*\*cost efficiency and scalability\*\*. As the startup grows, data volume will explode—millions of logs per day, thousands of reviews, and expanding image libraries. A lakehouse scales like a data lake but retains schema enforcement and ACID transactions for reliability, which are critical for financial records.



In short, the lakehouse architecture offers the startup flexibility for diverse data types, integrated analytics for innovation, and robust governance for business-critical operations—all in one platform. This balance makes it the most future-proof choice.

