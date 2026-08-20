# Maven Toys Sales & Inventory Analysis

# Project Overview

**Maven Toys Sales & Inventory Analysis** is a retail business intelligence project developed using **MySQL and Microsoft Power BI**.

The project analyzes sales, products, stores, dates, and inventory data to understand business performance and support data-driven decision-making.

The project follows an end-to-end analytics workflow:

**MySQL Database → SQL Analysis → Power Query / ETL → Data Cleaning → Data Modeling → DAX Measures → Power BI Dashboards → Business Insights**

# Project Objectives

The main objectives of this project are:

- Analyze overall sales and profit performance.
- Identify top-performing and low-performing products.
- Analyze product category performance.
- Compare sales performance between stores and cities.
- Analyze monthly, quarterly, and yearly sales trends.
- Monitor inventory and stock availability.
- Identify low-stock and out-of-stock products.
- Analyze inventory value.
- Build interactive dashboards for business decision-making.

# Industry
**Retail / Toy Retail Industry**

# Problem Statement
A toy retail business generates large amounts of sales and inventory data from different products, stores, and locations. Analysing this data manually makes it difficult to quickly identify business trends and operational problems.

This project addresses the following business questions:

- Which store performs the best?
- Which products sell the most?
- Which product categories generate higher sales and profit?
- Which cities have better sales performance?
- What are the monthly and yearly sales trends?
- Which products have low stock?
- Which products are out of stock?
- How is inventory distributed across stores and categories?
- Which products may require inventory replenishment?

# Tools & Technologies
**MySQL** - Database creation, table management and SQL analysis.
**Power BI** - Dashboard development and visualization.
**Power Query** - ETL and data cleaning.
**DAX** - Measures and analytical calculations. 
**GitHub** - Project version control and repository. 
**Excel / CSV** - Dataset storage and documentation. 

# Dataset Description:
The project uses the **Maven Toys** retail dataset.
The main tables used in the project are:

## 1. Sales Table
Contains sales transaction information.
Important columns:
- Sale_ID
- Date
- Product_ID
- Store_ID
- Units
- Sales
- Cost
- Profit

## 2. Products Table
Contains product information.
Important columns:
- Product_ID
- Product_Name
- Product_Category
- Product_Cost
- Product_Price

## 3. Stores Table
Contains store information.
Important columns:
- Store_ID
- Store_Name
- Store_City
- Store_Location
- Store_Open_Date

## 4. Inventory Table
Contains stock information.
Important columns:
- Product_ID
- Store_ID
- Stock_On_Hand

## 5. Date Table
A separate Date Table was created in Power BI for time-based analysis.
It contains:
- Date
- MonthName
- MonthNo
- QuarterName
- QuarterNo
- Year

# MySQL Database

A MySQL database named **`maven_toys`** was created for storing the project data.
## Database Tables
```text
maven_toys
│
├── maven_toys_sales
├── maven_toys_products
├── maven_toys_stores
└── maven_toys_inventory
```
The tables are connected using common keys such as:
- Product_ID
- Store_ID
- Date

# ETL & Data Cleaning

Power Query Editor was used to prepare the data before creating the dashboard.

The ETL process included:
## Extract
Data was obtained from the MySQL database.
## Transform
- Checked column names.
- Corrected data types.
- Checked missing values.
- Checked duplicate records.
- Prepared date information.
- Prepared data for analysis.
- Created required stock classifications.
## Load

The cleaned and transformed data was loaded into the Power BI data model.

# Data Model

The Power BI model contains:
- Sales
- Products
- Stores
- Inventory
- Date Table

Relationships were created using common fields such as **Product_ID, Store_ID and Date**.

The Date Table was connected with the Sales Date field to support monthly, quarterly and yearly analysis.


# DAX Measures

A separate **Measures Table** was created in Power BI to store the project's DAX measures.

Important measures include:

```DAX
Total Sales =
SUM('maven toys sales'[Sales])
```

```DAX
Total Profit =
SUM('maven toys sales'[Profit])
```

```DAX
Total Cost =
SUM('maven toys sales'[Cost])
```

```DAX
Total Units =
SUM('maven toys sales'[Units])
```

```DAX
Total Orders =
DISTINCTCOUNT('maven toys sales'[Sale_ID])
```

```DAX
Profit Margin =
DIVIDE([Total Profit], [Total Sales], 0)
```

```DAX
Average Order Value =
DIVIDE([Total Sales], [Total Orders], 0)
```

```DAX
Total Stock =
SUM('maven toys inventory'[Stock_On_Hand])
```

# Power BI Dashboard

The project contains **4 dashboard pages**.

## Page 1 — Sales Dashboard
Provides an overall view of sales and profitability.
   ## KPIs
        - Total Sales
        - Total Profit
        - Total Orders
        - Total Units
        - Profit Margin

   ## Visuals
        - Monthly Sales Trend
        - Sales by Product Category
        - Sales by City and Store
        - Profit by Category

   ## Slicers
        - Quarter
        - Month
        - City
        - Product Category

# Page 2 — Product Performance Dashboard
Analyzes product-level performance.
   ## KPIs
        - Product Count
        - Total Units
        - Average Product Price
        - Average Selling Price

   ## Visuals
        - Top 10 Products
        - Bottom 10 Products
        - Product Price vs Units Sold
        - Product / Category Analysis
        - Top Products by Profit

   ## Slicers
        - Product Category
        - Product Name
        - Price Band

# Page 3 — Store & Location Dashboard
Analyzes store and city performance.
   ## KPIs
        - Store Count
        - Total Sales
        - Total Profit
        - Average Sales per Store

   ## Visuals
        - Sales by City and Store
        - Profit by Store
        - Store Sales vs Profit

   ## Slicers
        - Quarter
        - City
        - Store
        - Store Location

# Page 4 — Inventory & Stock Dashboard
Analyzes inventory levels and stock availability.
   ## KPIs
        - Total Stock
        - Inventory Value
        - Product Count

   ## Visuals
        - Stock by Product Category
        - Stock by Store
        - Stock by City and Store
        - Inventory Value by Category
        - Product Stock Details

   ## Stock Status Slicer

        - In Stock
        - Low Stock
        - Out of Stock

# Key Business Insights

The dashboard is designed to help identify:

- Highest-performing stores.
- Lowest-performing stores.
- Top-selling products.
- Bottom-performing products.
- Most profitable product categories.
- Monthly and yearly sales trends.
- High-performing cities.
- Sales performance across stores.
- Low-stock products.
- Out-of-stock products.
- Inventory distribution across stores.
- Inventory value by category.
- Relationship between product price and units sold.

## Project Workflow

```text
Maven Toys Dataset
        ↓
MySQL Database
        ↓
Create Database & Tables
        ↓
Import Data
        ↓
SQL Analysis
        ↓
Connect MySQL with Power BI
        ↓
Power Query / ETL
        ↓
Data Cleaning
        ↓
Data Modeling
        ↓
Create Date Table
        ↓
Create DAX Measures
        ↓
Dashboard Development
        ↓
Add Filters & Slicers
        ↓
Business Analysis
        ↓
Key Insights
```

## Dashboard Screenshots

Add your actual Power BI screenshots to the `Screenshots` folder.

### Sales Dashboard

<img width="1029" height="562" alt="Sales Overview Dashboard" src="https://github.com/user-attachments/assets/bc07649c-8698-4ec6-95eb-917532c141d7" />

### Product Performance Dashboard
<img width="1052" height="552" alt="Product Analysis" src="https://github.com/user-attachments/assets/c52750e4-b8d7-4366-b95c-c4480d20963b" />


### Store & Location Dashboard
<img width="1037" height="551" alt="Store Analysis" src="https://github.com/user-attachments/assets/7b67ed03-c752-425a-bef6-76ec4e34befa" />


### Inventory & Stock Dashboard
<img width="1030" height="562" alt="Inventory Analysis" src="https://github.com/user-attachments/assets/479d7f9d-e4f5-4c0b-ba06-4bdb6abb1e92" />



## How to Run the Project

### Step 1 — MySQL

Install and open MySQL / MySQL Workbench.

### Step 2 — Create Database

Run:

```text
SQL/database_creation.sql
```

### Step 3 — Create Tables

Run:

```text
SQL/table_creation.sql
```

### Step 4 — Import Data

Import the Maven Toys CSV files into the corresponding MySQL tables.

### Step 5 — SQL Analysis

Run the queries from:

```text
SQL/analysis_queries.sql
```

### Step 6 — Open Power BI

Open:

```text
PowerBI/Maven_Toys_Sales_Inventory_Analysis.pbix
```

### Step 7 — Refresh Data

Refresh the Power BI report after connecting to the MySQL database.

### Step 8 — Explore Dashboard

Use the four dashboard pages and interactive slicers to analyze sales, products, stores and inventory.


# Project Outcome

The project transforms raw Maven Toys retail data into an interactive business intelligence solution.

The combination of **MySQL, SQL, Power Query, DAX and Power BI** provides a complete analytics workflow for understanding:

**Sales → Products → Stores → Inventory**

The final dashboard helps users monitor business performance, identify trends, compare stores and products, and understand stock conditions for better decision-making.

# Author

**Name:** Hemalatha S  
**Course:** Data and Business Analyst with AI
**Institution:** Anudip Foundation  
**Year:** 2026


# Project Repository

This repository contains the SQL scripts, dataset files, Power BI report, dashboard screenshots, DAX measures and project documentation.
