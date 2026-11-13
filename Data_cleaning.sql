--Data Cleaning- Sales Transaction

--1. Duplicate the data into new table
CREATE TABLE Sales AS SELECT * FROM "Sales transaction v.4a";

--Remove the cancelled orders
DELETE FROM Sales
WHERE TransactionNo LIKE 'C%';

--Checking for NULL/empty customers

SELECT * FROM Sales
WHERE CustomerNo IS NULL OR CustomerNo = '';

DELETE FROM Sales
WHERE CustomerNo IS NULL OR CustomerNo = '';

--Find and delete duplicate transactions

SELECT * FROM Sales
WHERE rowid IN(
    SELECT rowid
    FROM (
        SELECT rowid,
               ROW_NUMBER() OVER (
                   PARTITION BY Sales.TransactionNo,Sales.Date,ProductName,ProductNo,Price,Quantity,CustomerNo,Country
                   ORDER BY rowid)
        AS row_num

        FROM Sales

        )
    WHERE row_num > 1
    );

DELETE FROM Sales
WHERE rowid IN(
    SELECT rowid
    FROM (
        SELECT rowid,
               ROW_NUMBER() OVER (
                   PARTITION BY Sales.TransactionNo,Sales.Date,ProductName,ProductNo,Price,Quantity,CustomerNo,Country
                   ORDER BY rowid)
        AS row_num

        FROM Sales

        )
    WHERE row_num > 1
    );

--Look at insights:

--Monthly Sales Analysis

SELECT
    substr("Date", -4) AS sales_year,

    CAST(
        substr("Date", 1, instr("Date", '/') - 1)
        AS INTEGER
    ) AS sales_month,

    SUM(Price * Quantity) AS monthly_revenue

FROM Sales

GROUP BY sales_year, sales_month

ORDER BY sales_year, sales_month;

--Highest Revenue month

SELECT
    sales_year,
    sales_month,
    monthly_revenue
FROM (
    SELECT
        substr("Date", -4) AS sales_year,

        CAST(
            substr("Date", 1, instr("Date", '/') - 1)
            AS INTEGER
        ) AS sales_month,

        SUM(Price * Quantity) AS monthly_revenue

    FROM Sales
    GROUP BY sales_year, sales_month
)
ORDER BY monthly_revenue DESC
LIMIT 1;

--Top 10 Products by Revenue

SELECT
    ProductName,
    SUM(Price * Quantity) AS total_revenue

FROM Sales

GROUP BY ProductName

ORDER BY total_revenue DESC

LIMIT 10;

--Top 10 most Products by Units sold

 SELECT
    ProductName,
    SUM(Quantity) AS Total_Units_Sold
FROM Sales
WHERE Quantity > 0
GROUP BY ProductName
ORDER BY Total_Units_Sold DESC
LIMIT 10;

--Top 10 Products by Number of Transactions

SELECT
    ProductName,
    COUNT(DISTINCT TransactionNo) AS Number_of_Transactions
FROM sales
GROUP BY ProductName
ORDER BY Number_of_Transactions DESC
LIMIT 10;

--Sales by Country

SELECT
    Country,
    SUM(Price * Quantity) AS total_revenue

FROM Sales

GROUP BY Country

ORDER BY total_revenue DESC;

--Overall Sales Performance

SELECT
    COUNT(DISTINCT TransactionNo) AS total_transactions,
    SUM(Price * Quantity) AS total_revenue,
    AVG(Price * Quantity) AS average_transaction_value,
    SUM(Price * Quantity)/COUNT(DISTINCT TransactionNo) AS average_order_value

FROM Sales;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT TransactionNo) AS unique_transactions,
    COUNT(DISTINCT CustomerNo) AS unique_customers
FROM Sales;
