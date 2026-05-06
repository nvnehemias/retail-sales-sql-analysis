-- data cleaning file

-- DROP TABLE IF EXISTS retail_sales;

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

-- counting total invoices by country
select 
country,
count(distinct invoice_no) as total_invoices
from retail_sales
group by country
order by 2 desc
