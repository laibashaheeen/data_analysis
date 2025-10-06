select * from sales;
select * from people;
select * from products;
select * from geo;

-- SUBQUERY 
-- Question: Find the details of customers, whose payment amount is more than the average of total amount paid by all customers
select * from sales where amount > (select avg(amount) from sales);

-- CTE
-- Question: Find PID and product name which is from bars category.
 WITH my_CTE AS (Select * from products where category = "bars")
 select pid, product from my_CTE;