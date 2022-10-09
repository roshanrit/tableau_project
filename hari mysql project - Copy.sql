-- 1.)alll customers record
SELECT*FROM sales.customers;
-- 2.)show total numbers of customers
SELECT count(*)FROM sales.customers;
-- 3.)show  transation for chennai market (mark 001)
select*
from transactions
where market_code in ('mark001');
-- 4.)show distinct product code that where sold in chennai
select distinct product_code,market_code
from transactions
where market_code = "mark001";
-- 5.) show transation currency is us dollors
select*
from transactions
where currency = "USD";
-- 6.)show transation in 2020 by date table
select*
from transactions t join date d on t.order_date = d.date
where d.year = 2020;
-- 7.)show total revenue in 2020
select sum(t.sales_amount)
from transactions t join date d on t.order_date = d.date
where d.year =  2020 and t.currency = "INR\r";
-- 8.)show total revenue in year 2020 ,months janaury
select sum(t.sales_amount)
from transactions t join date d on t.order_date = d.date
where d.year =  2020 and d.month_name = "january";
-- 9.)show total revenue in 2020 in chennai
select sum(t.sales_amount)
from transactions t join date d on t.order_date = d.date
where d.year =  2020 and t.market_code = "mark001";
