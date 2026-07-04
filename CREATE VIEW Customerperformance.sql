SELECT * FROM starbucks_analytics_db.customers;

-- Create _customer_performance Contains:  Customer Name • Total Orders • Revenue

CREATE VIEW Customer_performance AS
select c.customer_id,
c.customer_name,
count(s.transaction_id) as Total_orders,
sum(s.total_amount) as Total_Revenue
from customers c
join sales s on c.customer_id = s.customer_id
group by c.customer_id,
c.customer_name;

select * from customer_performance;

-- View 2 vw_product_performance Contains: • Product Name • Quantity Sold • Revenue

Create view product_performance as
select i.item,
sum(s.quantity) as Quantity_sold,
sum(s.total_amount) as Revenue
from item i
join sales s on i.item_id = s.item_id
group by i.item;

select * from product_performance;


-- View 3 vw_monthly_sales Contains: • Month • Revenue • Transactions

CREATE VIEW Monthly_sales AS
select monthname()
