select * from sales;
select * from people;
select * from products;
select * from geo;
-- Inner Join
select s.amount, s.geoID, p.SPID, p.Salesperson 
from sales as s 
join people as p on p.SPID = s.SPID;
-- left join
select s.amount, s.SaleDate, pr.product, pr.PID
from sales as s
left join products as pr on pr.PID = s.PID;
-- right join
select s.amount, s.SaleDate, pr.product, pr.PID
from sales as s
right join products as pr on pr.PID = s.PID;
