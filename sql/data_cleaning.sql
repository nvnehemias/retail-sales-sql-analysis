-- data cleaning file

-- DROP TABLE IF EXISTS retail_sales;
/*
CREATE TABLE retail_sales (
    invoice_no VARCHAR(20),
    stock_code VARCHAR(20),
    description TEXT,
    quantity INTEGER,
    invoice_date TIMESTAMP,
    unit_price NUMERIC(10,2),
    customer_id VARCHAR(20),
    country VARCHAR(100)
);
*/
-- counting total invoices by country
select 
country,
count(distinct invoice_no) as total_invoices
from retail_sales
group by country
order by 2 desc
;

-- total revenue by month
select
    DATE_TRUNC('month', invoice_date) AS month,
    ROUND(SUM(revenue), 2) AS monthly_revenue
from retail_sales
group by 1 
order by 1;

-- top 10 customers
select
    customer_id,
    sum(quantity::float*unit_price::float) as lifetime_value
from retail_sales
group by 1
order by 2 desc
LIMIT 10;


-- Repeated customers

select 
customer_id,
count(distinct invoice_no) as count
from retail_sales
group by 1 
having count(distinct invoice_no) > 1
and customer_id is not null
order by 2 desc
;


-- Popular products
select 
stock_code
, description
, sum(quantity::int) as totals
from retail_sales
group by 1,2
order by 3 desc
;


-- Customer Ranking (Window Function)
