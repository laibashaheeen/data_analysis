show tables;
desc sales;
select * from sales;
select SPID, SaleDate, Amount from sales; 
select Amount, Boxes, Amount/Boxes AS "Amount per box" from sales;
select * from sales where amount >= 10000;
select * from sales where amount >= 10000 order by Amount desc;
select * from sales where GeoID = "G1" order by PID, Amount desc;
SELECT * FROM sales where pid =  "P01" and SaleDate = "2021-01-01 00:00:00";

select SaleDate, Amount, dayname(SaleDate) as "Day" from sales;

desc people;
select * from people where Salesperson like "B%";
SELECT SaleDate, Amount,
      case when Amount < 1000 then "Under 1k"
		   when Amount < 5000 then "Under 5k"
           when Amount < 10000 then "Under 10k"
	  else "Amount is Greater than 10k"
      end as "Amount Category"
from sales;
select SaleDate, Amount, 
case when weekday(SaleDate) = 1 then "Monday"
     when weekday(SaleDate) = 2 then "Tuesday"
     when weekday(SaleDate) = 3 then "Wednesday"
     when weekday(SaleDate) = 4 then "Thursday"
     when weekday(SaleDate) = 5 then "Friday"
     when weekday(SaleDate) = 6 then "Saturday"
     else "Sunday"
end as "Day of Week" from sales;

