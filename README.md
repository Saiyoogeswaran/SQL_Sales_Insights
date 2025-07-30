# Sales Insights using MySQL Database

This repository contains the code and data for analyzing sales data using MySQL database. The data set used in this project contains transaction figures of different products, from different regions over the years 2017–2020, with a total of 150,283 rows. There is information about markets, customers, products, etc. as well.

# Business Problem

A certain products manufacturer is facing decreased sales. They hire a team of data analysts to gain insights into their overall sales and revenue figures and then move forward with a renewed strategy. The main objective would be to visualize sales and revenue figures for this firm to ease its sales issues.

# Methodology
The data set is imported into a MySQL database and then some primary queries are run to understand what the data is all about.The first query is to get the total number of transactions. Using the select () and count () functions to get the figure at 150,283.

Let’s now check the total number of transactions when the market code is Mark001. The market code is for Chennai and the total figure stands at 1035. Performing an INNER JOIN to join the ‘transactions’ table with the ‘date’ table. This makes it easier to see the year in which a particular sale has happened.The following code when run will give the total revenue from Chennai for the year 2020. The amount stands at INR 24,63,024. 

SELECT SUM (sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date WHERE sales.date.year=‘2020’ AND sales.transactions.market_code= ‘Mark001’; The transactions table has some sales amounts with -1 as values. This is highly irrelevant for analysis and we want to know how many such rows exist so that they can be removed when working on the dashboard. The following code is run for the same and some 1600 such rows can be found which will be removed when working in PowerBI.

# Insights
The sales figures in 2020 were INR 1,42,23,555. The numbers for 2019 were INR 33,64,52,114. The figures were higher in 2018 at INR 41,43,08,941. The year 2017 saw lower sales value of INR 9,35,69,152. So there has been a steady decline in sales over the period 2017–2019.
