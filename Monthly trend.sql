SELECT * FROM starbucks_analytics_db.item;

select item_id,calories, type, protein from item
where type = "bakery" and protein >= 6;

    SELECT 
    date_format(datetime, '%m') As Month,
    Sum(total_amount) as revenue
    FROM Sales 
    group by date_format(datetime, '%m')
    order by revenue desc
    limit 10;
    
    SELECT     date_format(datetime, '%m') As Month,
    Sum(total_amount)/count(distinct transaction_id) as Avg_Order_Value
    FROM Sales
     group by date_format(datetime, '%m')
    order by avg_order_value desc
    limit 5;