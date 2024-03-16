select *from dataset where profit>0;

SELECT *from dataset WHERE profit > 0 AND discount >= 0.5;

SELECT DISTINCT `Customer ID`
FROM dataset;

select distinct a.category,a.`sub-category`
from dataset as a
join(
     select distinct `customer ID`
     from dataset
) as b on a.`customer ID` = b.`customer ID`; 

select city, SUM(profit) AS total_profit
from dataset
group by city
order by total_profit DESC
LIMIT 1;

create table duplicate_table like dataset;
insert into duplicate_table select*from dataset;
delete from duplicate_table where discount<0.3;
select *from duplicate_table;

SELECT category, SUM(quantity) AS total_sales
FROM dataset
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;

SELECT `ship mode`, SUM(profit) AS total_profit
FROM dataset
GROUP BY `ship mode`
ORDER BY total_profit DESC
LIMIT 1;

SELECT `sub-category`, SUM(quantity) AS total_quantity
FROM dataset
GROUP BY `sub-category`
ORDER BY total_quantity DESC;

select dataset.*,rank() over(order by sales desc)as sales_rank
from dataset
order by sales desc
limit 31 offset 20;

alter table dataset add `office supplies-binders`varchar(255);
update dataset set`office supplies-binders`=concat(category, '-',`sub-category`);

select*from dataset where `Order Date`> '03-08-2015' and  `Order Date` <'10-01-2017';

select `customer ID`,count(*) as usage_count from dataset group by`customer ID`
order by usage_count desc limit 1;

alter table dataset add column customer_name_length int;

update dataset
set customer_name_length = LENGTH(Customer Name);
    
select COUNT(distinct `Order ID`) as unique_orders_count
from dataset;

select `Order ID`, SUM(sales) AS total_sales
from dataset
group by`Order ID`
order by total_sales DESC
limit 1;

select city, `Order ID`,sales, rank() over (partition by city order by sales desc) as sales_rank
from dataset;

select `Order Date`,
    SUM(sales) over (partition by `Order Date`) as total_sales
from dataset;

select `Product ID`,sum(sales) as total_sales from dataset group by `Product ID`;