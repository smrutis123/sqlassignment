show databases;
CREATE database assignment;
show databases;
use assignment;
CREATE TABLE Authors(AuthorId INTEGER primary key,
Name VARCHAR(70));
insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
select * from authors;
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Sakuntala Devi');
select * from authors;
update authors set name = "Alastair McNeal" where 
authorid = 5;
select * from authors;
CREATE TABLE Books(BookId INTEGER primary key,Title VARCHAR(50),
AuthorId INTEGER); 
insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);
insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);
insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Random Book',22);
select * from books;
delete from books where bookid = 11;
select * from books;
CREATE TABLE books1 select * from books;
select * from books1;
alter table books1 rename favbooks;
select * from favbooks;
create table authors1 select * from authors;
alter table authors1 rename favauthors;
DROP TABLE if exists SUPPLIERS;
CREATE TABLE suppliers(supplier_id integer primary key,
   supplier_name varchar(70) not NULL,
   location varchar(50) NOT NULL);
   DROP TABLE if exists products;
CREATE TABLE if not exists products 
   (product_id integer primary key,
   product_name varchar(70) not NULL unique,
   description varchar(50) NOT NULL,
   supplierId INTEGER, 
   foreign key (supplierid) references suppliers(supplier_id)); 
   DROP TABLE if exists stock;
   CREATE TABLE if not exists stock 
   (stock_id integer primary key,
   productId INTEGER, 
   foreign key (productid) references products(product_id),
   balance_stock integer);
   alter table suppliers add constraint uc_name 
   unique (supplier_name);
   drop table if exists employee;
create table if not exists employee 
(empid integer, fname varchar(30), lname varchar(30), 
deptid tinyint, salary decimal(10,2));
insert into employee values(100,'Jon','Hamm',10,2000);
insert into employee values(200,'Tom','Cruise', 10, 3000),(300,'Hugh','Laurie',20,7500),(400,'Tom','Hanks',30,750);      
insert into employee values(500,'Johnny','Depp', 20, 1300),(600,'Hugh','Grant',30,850),(700,'Ben','Affleck',30,75),(800,'George','Clooney',10,10000);
insert into employee values(900,'Henry',Null, 10, 3000),(1000,'Gregory','House',20,3500);
insert into employee values(1100,'Jean','Hackman',10,2700);
alter table employee add column deptno integer;
alter table employee drop column deptno;
insert into employee values(339,'Tommy','Cruise1', 52, 3000),
(363,'Hughi','Laurie1',38,75000),
(625,'Tomii','Hankas',59,7500);      
insert into employee values(484,'Johnnyy','Depp3', 52, 13000),
(489,'Hughyy','Grant3',89,8500),
(357,'Benon','Affleck3',34,750),
(850,'George','Clooney6',92,12050);
insert into employee values(962,'Hennery',Null, 56, 3200),
(982,'Gregory','Housey',78,35500);
insert into employee values(552,'Jeany','Hackmany',67,27850);
update employee set deptno = 20 where empid % 2 = 0;
set sql_safe_updates = 0; 
select * from employee;
update employee set deptno = 30 where empid % 3 = 0;
select * from employee;
update employee set deptno = 40 where empid % 4 = 0;
select * from employee;
update employee set deptno = 50 where empid % 5 = 0;
select * from employee;
insert into employee values(553,'Jimmy','Hackmany5',76,27950,10);
update employee set deptno = 10 where EMPID = 553;
select * from employee;
CREATE table employee4 select * from employee;
select * from employee4;
create index emidx on employee4 (empid);
select * from employee4 where empid > 550;
create table employee5 select * from employee;
delete from employee5 where EMPID = 553;
create unique index emdx on employee5 (empid);
select * from employee5 where empid > 550;
create table employee6 select * from employee5;
create unique index emidx using hash on employee6 (empid);
select * from employee6 where empid > 550;
   
   

