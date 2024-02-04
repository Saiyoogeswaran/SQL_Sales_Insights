SELECT * FROM sales.transactions;
-- T0 count the total transactions
SELECT count(*) FROM sales.transactions; 
-- To view the top 5 kinda transcations we will be using limit
SELECT * FROM sales.transactions limit 5;
-- To find the transcations in the chennai we will be the using the market code
SELECT * FROM sales.transactions where market_code='Mark001';
-- To count the number of transactions in chennai
SELECT count(*) FROM sales.transactions where market_code='Mark001';
-- To check the number of USD transactions
SELECT count(*) FROM sales.transactions where currency='USD';
-- Perform inner join operation .* to select all columns we are joining using the date on both sales and transcation table
SELECT sales.transactions.*,sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date;
-- After performing the inner join we can now check for sales in the year 2020
SELECT sales.transactions.*,sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date WHERE sales.date.year='2020';
-- To find the total sales_amount in the year 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date WHERE sales.date.year='2020';
-- TO calculate the revenue in the year 2020 in chennai alone 
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year='2020' and sales.transactions.market_code='Mark001';
-- To find the distinct product sold in chennai
SELECT distinct product_code FROM sales.transactions WHERE sales.transactions.market_code='Mark001';
-- to find where the sales_amount=-1 -1 amd 0 are considered to be useless
SELECT count(*) FROM sales.transactions where sales_amount<=0;
-- To find the number of distinct currencies in use
-- Here we will be having total 4 different types of curriencies IND ,IND\r,USD,USD\r
SELECT distinct(currency) FROM sales.transactions;
-- To find the number of data with IND/r
SELECT count(*) FROM sales.transactions WHERE currency='INR\r';
-- SO we need to eliminate this duplication so the one with maximum data is been selected
-- In this the one with maximum occurences
SELECT count(*) FROM sales.transactions WHERE currency='INR\r';
SELECT count(*) FROM sales.transactions WHERE currency='INR';  
-- Thus duplications needs to be removed which is achieved in Power Bi power Query
-- To verify the total sales in year 2020
SELECT sum(transcations.sales_amount) FROM transcations INNER JOIN date ON transcations.order_date=date.date
WHERE date.year=2020;

