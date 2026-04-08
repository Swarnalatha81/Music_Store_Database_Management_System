-- string functions
select *from employees;
-- upper()
select upper(name) from employees;
-- lower()
select lower(name) from employees;
-- length()
select length(name) as len_name from employees;
-- concat
select concat(name, '-', department) as comb from employees;
-- substring
select substring(name,2,4) from employees;
-- trim
select trim(' Rishitha   ');
-- math functions
select abs(-45) as ab;
select round(23.3456,2) as round;
select ceil(23.4);
select floor(23.2);
select mod(11,3);
select power(2,3);
select sqrt(16);
select *from coffee;
select abs(Profit) as Profit1 from coffee;
select profit, sqrt(profit) as profit2 from coffee;
-- conditional functions
select Market, Profit, 
case when profit > 90 and profit < 100 then 'high'
when profit >= 100 then 'excellent'
else 'low' end as new from coffee;
select *from train;
select *from employees;
select name, salary, 
case when salary > 50000 then 'high'
else 'low' end as new from employees;

alter table coffee rename column `product type` to productof;
select market, productof, 
case when productof like "Coffe%" then "GoodOne"
when productof like "Tea%" then "Niceone"
when productof like "Espresso%" then "okay"
else "preferone" end as newtype from coffee;