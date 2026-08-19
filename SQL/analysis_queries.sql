USE maven_toys;

1. Total Sales, Cost and Profit
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Cost) AS Total_Cost,
    SUM(Profit) AS Total_Profit
FROM maven_toys_sales;

2. Sales by Product Category
SELECT
    p.Product_Category,
    SUM(s.Sales) AS Total_Sales,
    SUM(s.Profit) AS Total_Profit
FROM maven_toys_sales s
JOIN maven_toys_products p
    ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Category
ORDER BY Total_Sales DESC;

3. Top 10 Products by Units Sold
SELECT
    p.Product_Name,
    SUM(s.Units) AS Total_Units
FROM maven_toys_sales s
JOIN maven_toys_products p
    ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Units DESC
LIMIT 10;

4. Sales by City and Store
SELECT
    st.Store_City,
    st.Store_Name,
    SUM(s.Sales) AS Total_Sales
FROM maven_toys_sales s
JOIN maven_toys_stores st
    ON s.Store_ID = st.Store_ID
GROUP BY st.Store_City, st.Store_Name
ORDER BY Total_Sales DESC;

5. Stock by Product
SELECT
    p.Product_Name,
    p.Product_Category,
    SUM(i.Stock_On_Hand) AS Total_Stock
FROM maven_toys_inventory i
JOIN maven_toys_products p
    ON i.Product_ID = p.Product_ID
GROUP BY p.Product_Name, p.Product_Category
ORDER BY Total_Stock ASC;