select Customers.name , sum(Products.price* Order_Items.quantity) as total_Spent
from Customers
join Products on Products.id = Customers.id
join Order_Items on Customers.id  = Order_Items.order_id
join Orders on Customers.id = Orders.customer_id
group by Customers.name
order by total_Spent DESC

select Products.name , sum (Order_Items.quantity) as  total_sold
from Products
join Order_Items on Products.id = Order_Items.id
group by Products.name
order by total_sold DESC

select category , sum( Order_items.quantity * Products.price) as total_sales
from Products 
join Order_Items on Order_Items.order_id = Products.id
group by category
order by total_sales DESC


select Customers.name , count (Orders.id) as orders_count
from Customers
join Orders on Customers.id = Orders.id
group by Customers.name
order by orders_count DESC



