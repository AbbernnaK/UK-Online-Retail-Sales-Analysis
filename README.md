# UK-Online-Retail-Sales-Analysis

## Project Overview
This is an independent project which explores retail transaction data from a UK-based online retailer to analyse sales performance, customer purchasing behaviour and geographical revenue distribution.

I used Python, SQL and Tableau to import, clean and analyse the dataset and identify sales trends, top-performing products and key business insights.

The project focuses on answering business questions through data analysis and visualisation, with the aim of understanding product performance and identifying patterns in customer purchasing behaviour.

## Tools & Technologies
- Python (Pandas): Imported and prepared the original CSV dataset.
- SQLite: Created and managed the database used for analysis.
- SQL: Cleaned, queried and analysed transaction data.
- Tableau: Created an interactive dashboard to visualise key findings.

## Dataset

The project uses a publicly available Kaggle dataset containing approximately 500,000 retail transaction records covering sales, products, pricing, customers and geographical information.

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

- Monthly Revenue Analysis.
- Identifying the Highest Revenue Month.
- Top 10 Products by Revenue.
- Top 10 Products by Units Sold.
- Top 10 Products by Transaction Frequency.
- Revenue by Country.
- Overall Sales Performance.
- Unique Transactions and Customers.


### 4. Data Visualisation

Tableau was used to create a dashboard presenting the main findings through key performance indicators (KPIs) and charts.

The dashboard includes:

- Total revenue.
- Total transactions.
- Average order value.
- Unique customers.
- Top Revenue Market.
- Monthly revenue trend.
- Top 10 products by revenue.
- Top 10 international markets by revenue.
  
Tableau Dashboard: [https://public.tableau.com/views/SalesTransactions_17945019630930/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]

## Key Findings 

The analysis identified several patterns in the retailer's sales performance: 

- Total revenue: £62.78 million across 19,789 transactions. 
- Customer base: 4,718 unique customers. 
- Average order value: Approximately £3,173. 
- Geographical performance: The United Kingdom generated £52.35 million, accounting for approximately 83.4% of total revenue. 
- International markets: The Netherlands and Ireland were the second- and third-largest markets by revenue. 
- Product performance: Paper Craft Little Birdie generated the highest product revenue (£1.00 million) and had the highest recorded unit sales. 
- Transaction frequency: Cream Hanging Heart T-Light Holder appeared in the highest number of distinct transactions (2,269).

## Data Considerations 

An unusually large transaction involving 80,995 units of Paper Craft Little Birdie had a significant influence on its revenue and unit sales ranking. 

I investigated a potentially related cancellation record involving the same product, customer, date and quantity. However, the transaction identifiers and recorded prices differed, so I could not establish whether it directly reversed the original transaction. 

This highlighted the importance of investigating unusual observations and considering their influence when interpreting analytical results. 

 
