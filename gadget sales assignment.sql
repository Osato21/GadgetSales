USE gadgetsales;

SELECT name, sum(quantity) as total_quantity from orderitem
join product on orderitem.product_id= product.product_id
group by name order by total_quantity desc
limit 1;


SELECT name, sum(quantity) as total_quantity from orderitem
join product on orderitem.product_id= product.product_id
group by name order by total_quantity asc
limit 1;


SELECT name, price from product 
order by price desc
limit 3;


select customer.name, sum(quantity * price) as sales
from orderitem
join product on orderitem.product_id=product.product_id
join orders on orders.order_id= orderitem.order_id
join customer on customer.customer_id=orders.customer_id
group by customer.name
order by sales desc
limit 3;


select order_date, sum(quantity) as QuantitySold 
from orderitem
join orders on orders.order_id= orderitem.order_id
group by order_date
order by quantitySold asc
limit 1;


select customer.name, sum(quantity) as QuantityOrdered
from orderitem
join product on orderitem.product_id=product.product_id
join orders on orders.order_id= orderitem.order_id
join customer on customer.customer_id=orders.customer_id
group by customer.name
order by QuantityOrdered desc
limit 1;


select name, sum(quantity) as QuantitySold
from orderitem
join product on orderitem.product_id=product.product_id
group by name
order by QuantitySold asc
limit 3;

select orders.order_date, sum(quantity) as TotalQuantity
from orderitem
join product on orderitem.product_id=product.product_id
join orders on orders.order_id= orderitem.order_id
join customer on customer.customer_id=orders.customer_id
where product.name= 'ipad pro'
group by order_date
order by TotalQuantity desc
limit 1;

select customer.name, sum(quantity) as TotalQuantity
from orderitem
join product on orderitem.product_id=product.product_id
join orders on orders.order_id= orderitem.order_id
join customer on customer.customer_id=orders.customer_id
where product.name= 'iphone 13'
group by customer.name
order by TotalQuantity desc
limit 1;

select product.name, price, sum(quantity)
from orderitem
join product on orderitem.product_id=product.product_id
join orders on orders.order_id= orderitem.order_id
join customer on customer.customer_id=orders.customer_id
group by product.name, price
order by price asc
limit 1;

select product.name, price, sum(quantity)
from orderitem
join product on orderitem.product_id=product.product_id
join orders on orders.order_id= orderitem.order_id
join customer on customer.customer_id=orders.customer_id
group by product.name, price
order by price desc 
limit 1;