SELECT * FROM starbucks_analytics_db.customers;
select item.item_id,item.item , sum(sales.total_amount) as total_revenue	
            FROM Sales
            join item on sales.item_id = item.item_id
GROUP BY item.item_id, item.item
order by total_revenue desc
limit 10 
;          
select i.item_id id, i.item itm , sum(s.total_amount) as total_revenue	
            FROM Sales s
            join item i on s.item_id = i.item_id
GROUP BY i.item_id, i.item
order by total_revenue desc
limit 10 ;
