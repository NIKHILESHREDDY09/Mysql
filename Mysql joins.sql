create database amazon;
use amazon;
create table orders(
id int primary key,
product_name varchar(100),
price int,
quantity int,
product_category varchar(100),
product_subcategory varchar(100),
order_region varchar(100));
alter table orders rename column id to order_id;
INSERT INTO orders (order_id, product_name, price, quantity, product_category, product_subcategory, order_region)
VALUES
(1, 'iPhone 15', 80000, 1, 'Electronics', 'Mobile Phones', 'North'),
(2, 'Samsung Galaxy S23', 75000, 2, 'Electronics', 'Mobile Phones', 'South'),
(3, 'Nike Running Shoes', 6000, 3, 'Fashion', 'Footwear', 'West'),
(4, 'Levi’s Jeans', 2500, 2, 'Fashion', 'Clothing', 'East'),
(5, 'Dell Laptop', 55000, 1, 'Electronics', 'Computers', 'North'),
(6, 'Sony Headphones', 4000, 4, 'Electronics', 'Accessories', 'South'),
(7, 'Wooden Dining Table', 15000, 1, 'Home & Furniture', 'Dining', 'West'),
(8, 'Prestige Pressure Cooker', 3000, 2, 'Home & Kitchen', 'Cookware', 'East'),
(9, 'LG Smart TV', 45000, 1, 'Electronics', 'Television', 'North'),
(10, 'Adidas T-Shirt', 1200, 5, 'Fashion', 'Clothing', 'South');
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO customers (customer_id, customer_name, email, phone, order_id)
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', '9876543210', 1),
(102, 'Priya Mehta', 'priya.mehta@yahoo.com', '9123456780', 2),
(103, 'Arjun Reddy', 'arjun.reddy@outlook.com', '9988776655', 3),
(104, 'Sneha Kapoor', 'sneha.kapoor@gmail.com', '9876501234', 4),
(105, 'Vikram Singh', 'vikram.singh@gmail.com', '9812345678', 5),
(106, 'Ananya Rao', 'ananya.rao@yahoo.com', '9123456701', 6),
(107, 'Ravi Kumar', 'ravi.kumar@outlook.com', '9988701234', 7),
(108, 'Neha Verma', 'neha.verma@gmail.com', '9876512345', 8),
(109, 'Karan Malhotra', 'karan.malhotra@yahoo.com', '9123456712', 9),
(110, 'Divya Iyer', 'divya.iyer@outlook.com', '9988712345', 10);
select * from customers;

#------------Inner JOIN-----------

select c.customer_name, o.product_name,o.product_category, o.order_region from orders o 
inner join customers c on c.order_id = o.order_id;
select * from orders;
select o.product_name, o.price, o.product_subcategory, o.order_region, c.customer_name, c.email, c.phone from orders o
inner join customers c on o.order_id = c.order_id;
#-----------Left JOIN-------------
select c.customer_name, o.product_name, o.price from orders o left join customers c on o.order_id = c.order_id;
delete from customers where order_id = 10;
select * from customers;
#---------------Right JOIN-------------
select c.customer_name,o.product_name,o.price from customers c right join orders o on o.order_id = c.order_id;
