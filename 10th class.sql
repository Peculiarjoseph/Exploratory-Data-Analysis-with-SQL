SELECT * FROM sample_superstore.sample;

-- retrieve all colums from orders where the ship_mode is 'second class'
select * 
from sample 
where ship_mode = 'second class';

-- retrieve the order ID and order date for orders where the ship mode is 'standard class'
select order_id, order_date, ship_mode 
from sample 
where ship_mode = 'standard class';

-- retrieve the customer name and segment for orders with a profit less than 0
select customer_name 
and segment 
from sample 
where profit < 0;

-- retrieve distinct customer ids for orders with a quantity greater than or equal to 5
select distinct customer_id, quantity 
from sample 
where quantity >= 5;

-- retrieve the total sales for orders from the east region
select region, sum(sales) 
from sample 
where region = 'east'
group by region;

-- retrieve the average discount for orders with a ship date in 2016
select avg(discount), ship_date 
from sample 
where ship_date between '01/01/2016' and '31/12/2016'
group by ship_date;

-- retrieve the number of orders for each segment
select segment, count(order_id) 
from sample 
group by segment;

-- retrieve the maximum profit among all orders
select max(profit) from sample;

-- retrieve the product name and and quantity for orders where the category is 'technology'
select product_name, quantity, category 
from sample 
where category = 'technology';

-- retrieve the total sales and profit for each sub-category
select sub_category, profit, sum(sales) from sample
group by sub_category, profit;

-- retrieve the average discount for orders with a quantity greater than 3
select avg(discount) 
from sample 
where quantity>3;

-- retrieve the ship_date and ship mode for orders with a discount of 20%
select ship_date, ship_mode, discount 
from sample 
where discount = 0.2;

-- retrieve the number of orders placed in each city
select city, count(order_id) from sample 
group by city;

-- retrieve the average sale for orders with a discount less than 0.5
select avg(sales) 
from sample 
where discount < 0.5;

-- retrieve the total profit for orders with a ship mode of 'second class' and a discount of 0   
select ship_mode, sum(profit) 
from sample 
where ship_mode = 'second class' and discount = 0