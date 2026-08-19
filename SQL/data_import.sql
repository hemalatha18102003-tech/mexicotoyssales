USE maven_toys;

//Loading products.csv
LOAD DATA LOCAL INFILE 'C:/Maven_Toys/products.csv'
INTO TABLE maven_toys_products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Product_ID, Product_Name, Product_Category, Product_Cost, Product_Price);

//Loading Stores.csv
LOAD DATA LOCAL INFILE 'C:/Maven_Toys/stores.csv'
INTO TABLE maven_toys_stores
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Store_ID, Store_Name, Store_City, Store_Location, Store_Open_Date);

//Loading Sale.csv
LOAD DATA LOCAL INFILE 'C:/Maven_Toys/sales.csv'
INTO TABLE maven_toys_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Sale_ID, Date, Product_ID, Store_ID, Units, Sales, Cost, Profit);

//Loading Inventory.csv
LOAD DATA LOCAL INFILE 'C:/Maven_Toys/inventory.csv'
INTO TABLE maven_toys_inventory
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Product_ID, Store_ID, Stock_On_Hand);

