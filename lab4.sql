drop database if exists gldbnew;
create database gldbnew;
use gldbnew;
drop table if exists category ;
create table category(
cat_id int(5),
cat_name varchar(20),
primary key(cat_id));

create table product(
pro_id int(5),
pro_name varchar(50),
pro_desc varchar(100),
cat_id int(5),
primary key(pro_id),
key cat_id(cat_id));

create table supplier(
sup_id int(5),
sup_name varchar(50),
sup_city varchar(20),
sup_phone int(11),
primary key(sup_id));

create table supplier_pricing(
pricing_id int(5),
pro_id int(5),
sup_id int(5),
sup_pricing int(10),
primary key(pricing_id),
key pro_id(pro_id),
key sup_id(sup_id));

create table customer(
cus_id int(5),
cus_name varchar(50),
cus_phone int (11),
cus_city varchar(20),
cus_gender varchar(15),
primary key(cus_id));

drop table if exists orders;
create table orders(
ord_id int(5),
ord_amount int(10),
ord_date date,
cus_id int(10),
pricing_id int(5),
primary key(ord_id),
key pricing_id(pricing_id),
key cus_id(cus_id));

create table rating(
rat_id int(5),
ord_id int(5),
rat_star int(5),
primary key (rat_id),
key ord_id(ord_id));


alter table supplier modify column sup_phone int(20);
delete from supplier where sup_id=1;
insert into supplier values (1,"Rajesh Retails","Delhi",1234567890);
insert into supplier values (2,"Appario Ltd","Mumbai",2589631470);
insert into supplier values (3,"Knome products","Banglore",9785462315);
insert into supplier values (4,"Bansal Retails","Kochi",8975463285);
insert into supplier values (5,"Mittal Ltd","Lucknow",7898456532);


