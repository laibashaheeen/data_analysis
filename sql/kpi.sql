-- KPI Statement: 'Calculate total revenue by salesperson'
select * from sales;
select * from people;
select p.salesperson, sum(s.Amount) as revenue
from sales s
join people p on p.spid = s.spid
group by p.salesperson
order by revenue desc;

-- KPI Statement: "Determine average order value by region"
select * from sales;
select * from geo;
select g.region, avg(s.amount) as Average_order_value, COUNT(s.SPID) AS Total_Orders
from sales s
join geo g on g.GEOID = s.geoid
group by g.region
order by Average_order_value desc

-- KPI Statement: "Calculate profit margin percentage by product category"
select * from sales;
select * from products;
SELECT pr.category, 
(sum(s.amount - (s.boxes * pr.Cost_per_box)) / sum(s.amount)) * 100 AS Profit_Margin_Percentage,
sum(s.amount) as total_revenue,
sum(s.amount - (s.boxes * pr.Cost_per_box)) / sum(s.amount) as total_profit
FROM sales s
join products pr on pr.PID = s.PID
group by pr.Category
order by Profit_Margin_Percentage desc

-- KPI Statement: "Compare sales per customer ratio across teams and locations"
