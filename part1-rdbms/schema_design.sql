drop database if exists Customerorders;

SHOW databases;

CREATE database IF	NOT	exists Customerorders;

USE	Customerorders;

/*Create the tables*/

CREATE TABLE Customers (
  customer_id VARCHAR(10) PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  customer_email VARCHAR(100) NOT NULL,
  customer_city VARCHAR(50) NOT NULL
);

INSERT INTO Customers VALUES
('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi'),
('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore'),
('C004', 'Sneha Iyer', 'sneha@gmail.com', 'Chennai'),
('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai');

/*Create the Product tables*/

CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10 , 2 ) NOT NULL
);

INSERT INTO Products VALUES
('P001', 'Laptop', 'Electronics', 55000),
('P002', 'Mouse', 'Electronics', 800),
('P003', 'Desk Chair', 'Furniture', 8500),
('P004', 'Notebook', 'Stationery', 120),
('P005', 'Headphones', 'Electronics', 3200);

/*Create the Sales_Reps tables*/

CREATE TABLE Sales_Reps (
  sales_rep_id VARCHAR(10) PRIMARY KEY,
  sales_rep_name VARCHAR(100) NOT NULL,
  sales_rep_email VARCHAR(100) NOT NULL,
  office_address VARCHAR(200) NOT NULL
);

INSERT INTO Sales_Reps VALUES
('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001'),
('SR03', 'Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 560001');

/*Create the Order tables*/

CREATE TABLE Orders (
  order_id VARCHAR(10) PRIMARY KEY,
  customer_id VARCHAR(10) NOT NULL,
  order_date DATE NOT NULL,
  sales_rep_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);

INSERT INTO Orders VALUES
('ORD1001', 'C004', '2023-02-22', 'SR03'),
('ORD1002', 'C002', '2023-01-17', 'SR02'),
('ORD1003', 'C002', '2023-09-16', 'SR01'),
('ORD1004', 'C001', '2023-11-29', 'SR01'),
('ORD1005', 'C007', '2023-10-29', 'SR02');

/*Create the Order item tables*/

CREATE TABLE Order_Items (
  order_id VARCHAR(10),
  product_id VARCHAR(10),
  quantity INT NOT NULL,
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items VALUES
('ORD1001', 'P002', 5),
('ORD1002', 'P005', 1),
('ORD1003', 'P002', 5),
('ORD1004', 'P005', 5),
('ORD1005', 'P002', 3);
