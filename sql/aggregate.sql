-- Aggregate 
select geoID, sum(amount), avg(amount)
from sales s
group by geoID;

select g.geo, sum(amount), avg(amount)
from sales s
join geo g on g.geoId = s.geoId
group by g.geo;

SELECT pr.category, p.team, sum(Boxes), sum(Amount)
FROM sales s
JOIN people p on p.spid = s.spid
JOIN products pr on pr.pid = s.pid
WHERE p.Team <> ''
GROUP BY pr.category, p.team
ORDER BY pr.category, p.team;

-- Having 
SELECT category, SUM(Cost_per_box) AS total_cost, max(Cost_per_box) AS maximum_cost, min(Cost_per_box) AS minimum_cost
FROM products
GROUP BY category
HAVING SUM(Cost_per_box) > 4.43;

-- limit
-- SELECT Product, SUM(Cost_per_box) AS total_cost
-- FROM products
-- GROUP BY Product
-- limit 10;



