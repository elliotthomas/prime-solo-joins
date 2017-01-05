--Get all customers and their addresses.
SELECT * FROM customers
INNER JOIN addresses
ON customers.id=addresses.customer_id;
--Get all orders and their line items.
Select orders.order_date, orders.total, line_items.unit_price, line_items.quantity FROM orders
RIGHT JOIN line_items
ON orders.id=line_items.order_id;
--Which warehouses have cheetos?
select warehouse.warehouse
from warehouse
inner join warehouse_product
on warehouse.id=warehouse_product.warehouse_id
where warehouse_product.product_id = 5;
--Which warehouses have diet pepsi?
select warehouse.warehouse
from warehouse
inner join warehouse_product
on warehouse.id=warehouse_product.warehouse_id
where warehouse_product.product_id = 6;
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
select  first_name,last_name
from customers
inner join addresses
on addresses.customer_id=customers.id
inner join orders
on orders.address_id=addresses.id;
--How many customers do we have?
select count(distinct id) from customers;
--How many products do we carry?
select count(distinct id) from products;
--What is the total available on-hand quantity of diet pepsi?
SELECT sum( on_hand)
FROM warehouse_product
where product_id=6;
