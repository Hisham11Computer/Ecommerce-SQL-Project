create table Customers (id int , name varchar(50),email varchar(50) , city varchar (50))

create table  Products (id int , name varchar(50) ,category varchar(50), price int)

create table Orders (id int , customer_id int , order_date date )

create table Order_Items (id int , order_id int ,product_id int , quantity int )
