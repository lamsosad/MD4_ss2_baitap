-- create database QuanLyBanHang;
-- use QuanLyBanHang;
create table Customer(
id int primary key auto_increment,
name varchar(255) not null unique,
age int 
);

create table `Order`(
id int primary key auto_increment,
customer_id int,
createdDate datetime default now(),
total float,
foreign key (customer_id) references Customer(id)
);

create table Product(
id int primary key auto_increment,
name varchar(255) unique not null,
price float
);

create table OrderDetail(
oder_id int references `Order`(id),
product_id int references Product(id),
quantity int
);

select * from Product;
select * from Orderdetail;
select * from `Order`;
select * from Customer;