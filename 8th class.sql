-- retrieve the customer that placed order and their order date
select* from customers
join orders
on customers.customer_id = orders.customer_id; 

select first_name, order_date from customers
join orders
on customers.customer_id = orders.customer_id;

-- retrieve the customer name that placed orders and their order, order date, quantity of orders, and unit price 
select * from customers
join orders
on customers.customer_id = orders.customer_id
join order_items
on orders.order_id = order_items.order_id;

select first_name, order_date, quantity, unit_price from customers
join orders
on customers.customer_id = orders.customer_id
join order_items
on orders.order_id = order_items.order_id;

-- retrieve the customer who placed order, and the name of the product they purchased
select * from customers
join orders
on customers.customer_id = orders.customer_id
join order_items
on orders.order_id = order_items.order_id
join products 
on products.product_id = order_items.product_id;

 
select first_name, name from customers
join orders
on customers.customer_id = orders.customer_id
join order_items
on orders.order_id = order_items.order_id
join products 
on products.product_id = order_items.product_id;



