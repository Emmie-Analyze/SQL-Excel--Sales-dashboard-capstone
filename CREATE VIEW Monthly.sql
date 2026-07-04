SELECT * FROM starbucks_analytics_db.sales;


 -- View 3 vw_monthly_sales Contains: • Month • Revenue • Transactions

CREATE VIEW Monthly_sales AS
select monthname(s.datetime) As Month,
sum(s.total_amount) as Revenue,
count(distinct s.transaction_id) as Transactions
from sales s 
group by monthname(s.datetime);

select * from monthly_sales;