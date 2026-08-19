USE maven_toys;

CREATE TABLE maven_toys_sales (
    Sale_ID INT PRIMARY KEY,
    Date DATE,
    Product_ID INT,
    Store_ID INT,
    Units INT,
    Sales DECIMAL(12,2),
    Cost DECIMAL(12,2),
    Profit DECIMAL(12,2)
);

CREATE TABLE maven_toys_products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Product_Category VARCHAR(100),
    Product_Cost DECIMAL(10,2),
    Product_Price DECIMAL(10,2)
);

CREATE TABLE maven_toys_stores (
    Store_ID INT PRIMARY KEY,
    Store_Name VARCHAR(255),
    Store_City VARCHAR(100),
    Store_Location VARCHAR(100),
    Store_Open_Date DATE
);

CREATE TABLE maven_toys_inventory (
    Product_ID INT,
    Store_ID INT,
    Stock_On_Hand INT
);
