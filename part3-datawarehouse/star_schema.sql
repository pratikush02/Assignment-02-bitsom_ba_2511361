-- dim_date
INSERT INTO dim_date VALUES (1, '2023-01-15', 15, 1, 2023);
INSERT INTO dim_date VALUES (2, '2023-02-05', 5, 2, 2023);
INSERT INTO dim_date VALUES (3, '2023-03-31', 31, 3, 2023);
INSERT INTO dim_date VALUES (4, '2023-06-04', 4, 6, 2023);
INSERT INTO dim_date VALUES (5, '2023-08-09', 9, 8, 2023);
INSERT INTO dim_date VALUES (6, '2023-10-26', 26, 10, 2023);
INSERT INTO dim_date VALUES (7, '2023-11-18', 18, 11, 2023);
INSERT INTO dim_date VALUES (8, '2023-12-08', 8, 12, 2023);
INSERT INTO dim_date VALUES (9, '2023-12-26', 26, 12, 2023);
INSERT INTO dim_date VALUES (10, '2023-07-22', 22, 7, 2023);

-- dim_store
INSERT INTO dim_store VALUES (1, 'Chennai Anna', 'Chennai');
INSERT INTO dim_store VALUES (2, 'Delhi South', 'Delhi');
INSERT INTO dim_store VALUES (3, 'Bangalore MG', 'Bangalore');
INSERT INTO dim_store VALUES (4, 'Pune FC Road', 'Pune');
INSERT INTO dim_store VALUES (5, 'Mumbai Central', 'Mumbai');

-- dim_product
INSERT INTO dim_product VALUES (1, 'Smartwatch', 'Electronics');
INSERT INTO dim_product VALUES (2, 'Phone', 'Electronics');
INSERT INTO dim_product VALUES (3, 'Atta 10kg', 'Grocery');
INSERT INTO dim_product VALUES (4, 'Jeans', 'Clothing');
INSERT INTO dim_product VALUES (5, 'Tablet', 'Electronics');

-- fact_sales (cleaned, standardized categories & dates)
INSERT INTO fact_sales VALUES (1, 1, 1, 1, 'CUST004', 10, 58851.01, 588510.10);
INSERT INTO fact_sales VALUES (2, 2, 1, 2, 'CUST019', 20, 48703.39, 974067.80);
INSERT INTO fact_sales VALUES (3, 3, 4, 1, 'CUST025', 6, 58851.01, 353106.06);
INSERT INTO fact_sales VALUES (4, 4, 1, 4, 'CUST031', 15, 30187.24, 452808.60);
INSERT INTO fact_sales VALUES (5, 5, 3, 3, 'CUST027', 12, 52464.00, 629568.00);
INSERT INTO fact_sales VALUES (6, 6, 4, 4, 'CUST041', 16, 2317.47, 37079.52);
INSERT INTO fact_sales VALUES (7, 7, 2, 4, 'CUST042', 5, 30187.24, 150936.20);
INSERT INTO fact_sales VALUES (8, 8, 3, 3, 'CUST030', 9, 27469.99, 247229.91);
INSERT INTO fact_sales VALUES (9, 9, 4, 3, 'CUST042', 4, 31604.47, 126417.88);
INSERT INTO fact_sales VALUES (10, 10, 1, 3, 'CUST008', 3, 52464.00, 157392.00);
