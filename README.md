# UK-Online-Retail-Sales-Analysis

## Project Overview
This project explores retail transaction data from a UK-based online retailer to analyse sales performance, customer purchasing behaviour and geographical revenue distribution.

I used Python, SQL and Tableau to import, clean and analyse the dataset and identify sales trends, top-performing products and key business insights.

The project focuses on answering business questions through data analysis and visualisation, with the aim of understanding product performance and identifying patterns in customer purchasing behaviour.

## Tools & Technologies
- Python (Pandas): Imported and prepared the original CSV dataset.
- SQLite: Stored and managed the dataset for SQL analysis.
- SQL: Cleaned, queried and analysed transaction data.
- Tableau: Created an interactive dashboard to visualise key findings.

## Dataset

The dataset was obtained from Kaggle and contains retail transaction records from a UK-based online retailer.

It includes approximately 500,000 transaction records and eight columns:

### Column

- TransactionNo: Order identifier
- Date: Date of the transaction
- ProductNo: Unique product identifier
- ProductName: 	Product description
- Price: Unit price
- Quantity:	Number of units purchased
- CustomerNo:	Customer identifier
- Country: Customer's country

Dataset source: [https://www.kaggle.com/datasets/gabrielramos87/an-online-shop-business/data]

The original dataset is not included in this repository due to its file size. It can be accessed through the Kaggle source link above.

## Project Workflow

### 1. Data Import

The original CSV dataset was imported into an SQLite database using Python and Pandas.

A separate working table named "Sales" was created from the original imported table, allowing data cleaning and modifications to be carried out without altering the original dataset.

### 2. Data Cleaning

SQL was used to prepare the working dataset for analysis.

The cleaning process included:

- Removing duplicate records.
- Identifying and handling missing values.
- Excluding cancelled transactions identified by transaction numbers beginning with C.
- Excluding records with zero or negative quantities.
- Standardising inconsistent product and country values.

The original imported table was retained separately to preserve the raw data.

### 3. Data Analysis

SQL queries were used to investigate sales performance and answer key business questions.

The analysis included:

- Total revenue and transaction count.
- Average order value.
- Number of unique customers.
- Monthly revenue trends.
- Revenue by country.
- Top 10 products by revenue.
- Top 10 products by total units sold.
- Top 10 products by transaction frequency.

### 4. Data Visualisation

Tableau was used to create a dashboard presenting the main findings through key performance indicators (KPIs) and charts.

The dashboard includes:

- Total revenue.
- Total transactions.
- Average order value.
- Unique customers.
- Highest revenue country.
- Monthly revenue trend.
- Top 10 products by revenue.
- Revenue by international country.
  
Tableau Dashboard: [https://public.tableau.com/views/SalesTransactions_17945019630930/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]
