create database customers;
use customers;
create table info(
id int auto_increment,
first_name varchar(100) not null default 'FIRST NAME',
last_name VARCHAR(100) NOT NULL DEFAULT 'LASTNAME',
year_of_birth int,
product_name VARCHAR(100),
quantity_purchased int,
Bill_amount int,
email VARCHAR(100),
primary key(id)
);
insert into info (first_name,last_name,year_of_birth,product_name,quantity_purchased,Bill_amount,email) values
('John','Doe',1985,'Laptop',1,75000,'john.doe@example.com'),
('Jane','Smith',1990,'Smartphone',2,50000,'jane.smith@example.com'),
('Raj','Kumar',1978,'Refrigerator',1,30000,'raj.kumar@example.com'),
('Emily','Brown',1995,'Headphones',3,9000,'emily.brown@example.com'),
('Arun','Patel',1988,'Microwave',1,12000,'arun.patel@example.com'),
('Sophia','Williams',1992,'Television',1,45000,'sophia.williams@example.com'),
('Michael','Johnson',1980,'Air Conditioner',1,35000,'michael.johnson@example.com'),
('Priya','Sharma',1997,'Washing Machine',1,28000,'priya.sharma@example.com'),
('David','Lee',1983,'Tablet',2,40000,'david.lee@example.com'),
('Anita','Rao',1989,'Mixer Grinder',1,7000,'anita.rao@example.com'),
('Chris','Evans',1984,'Camera',1,55000,'chris.evans@example.com'),
('Neha','Verma',1996,'Smartwatch',2,16000,'neha.verma@example.com'),
('Robert','Taylor',1975,'Desktop PC',1,60000,'robert.taylor@example.com'),
('Sunita','Nair',1982,'Vacuum Cleaner',1,15000,'sunita.nair@example.com'),
('Daniel','White',1991,'Gaming Console',1,40000,'daniel.white@example.com'),
('Meera','Iyer',1994,'Blender',2,8000,'meera.iyer@example.com'),
('Kevin','Brown',1987,'Printer',1,10000,'kevin.brown@example.com'),
('Lakshmi','Menon',1979,'Dishwasher',1,35000,'lakshmi.menon@example.com'),
('Sarah','Miller',1993,'Hair Dryer',2,6000,'sarah.miller@example.com'),
('Vikram','Singh',1986,'Water Purifier',1,18000,'vikram.singh@example.com'),
('Alice','Johnson',1998,'Keyboard',3,4500,'alice.johnson@example.com'),
('Manoj','Das',1981,'Router',1,5000,'manoj.das@example.com'),
('Peter','Parker',1985,'Monitor',1,12000,'peter.parker@example.com'),
('Sneha','Gupta',1992,'Iron',1,3000,'sneha.gupta@example.com'),
('Bruce','Wayne',1977,'Projector',1,25000,'bruce.wayne@example.com'),
('Ravi','Chopra',1989,'Speaker',2,8000,'ravi.chopra@example.com'),
('Linda','Scott',1984,'Coffee Maker',1,7000,'linda.scott@example.com'),
('Amit','Joshi',1990,'External HDD',1,6000,'amit.joshi@example.com'),
('Karen','Lopez',1986,'Fitness Band',2,10000,'karen.lopez@example.com'),
('Suresh','Reddy',1978,'Ceiling Fan',2,8000,'suresh.reddy@example.com'),
('Nancy','Green',1995,'E-Reader',1,12000,'nancy.green@example.com'),
('Deepak','Mishra',1983,'Smart Bulb',4,4000,'deepak.mishra@example.com'),
('Olivia','Clark',1991,'Hair Straightener',1,5000,'olivia.clark@example.com'),
('Kiran','Bhat',1987,'Juicer',1,6000,'kiran.bhat@example.com'),
('George','King',1982,'Gaming Mouse',2,7000,'george.king@example.com'),
('Shalini','Roy',1996,'Rice Cooker',1,5000,'shalini.roy@example.com'),
('Henry','Adams',1979,'Smart TV',1,55000,'henry.adams@example.com'),
('Pooja','Mehta',1993,'Bluetooth Earbuds',2,8000,'pooja.mehta@example.com'),
('Mark','Wilson',1988,'Smart Lock',1,15000,'mark.wilson@example.com'),
('Anil','Kapoor',1981,'Induction Stove',1,9000,'anil.kapoor@example.com'),
('Rachel','Hall',1994,'Digital Camera',1,30000,'rachel.hall@example.com'),
('Sanjay','Rana',1985,'Air Fryer',1,10000,'sanjay.rana@example.com'),
('Laura','Young',1992,'Portable Speaker',2,6000,'laura.young@example.com'),
('Naveen','Pillai',1980,'Smart Plug',3,4500,'naveen.pillai@example.com'),
('Jessica','Moore',1989,'Cordless Phone',1,4000,'jessica.moore@example.com'),
('Ashok','Menon',1976,'Electric Kettle',1,3500,'ashok.menon@example.com'),
('Megan','Harris',1997,'Tablet',1,20000,'megan.harris@example.com'),
('Karthik','Nair',1984,'Laptop',1,65000,'karthik.nair@example.com'),
('Grace','Lewis',1990,'Smartwatch',1,8000,'grace.lewis@example.com'),
('Rohit','Shah',1988,'Microwave',1,11000,'rohit.shah@example.com');
select first_name from info;
select last_name from info;
select year_of_birth from info;
select bill_amount from info;
select count(*) from info;
select * from info;
select year_of_birth from info where year_of_birth >= 1995;
update info set first_name = 'alex' where first_name = 'John' limit 1;
select * from info where first_name = 'alex';
select * from info;
select concat(first_name,' ',last_name) as full_name from info;

select substr('hello world',1,5);

select concat(substr(email,1,15),'...') as short_emailname from info;

select * from info;

select replace(email,'@example.com','@gmail.com') from info;

select replace('nikhiledh reddy', 'd', 's');

select char_length(first_name) as name_length from info;

select upper(first_name) from info;

select * from info;

insert into info(first_name, last_name, year_of_birth,product_name,quantity_purchased,Bill_amount,email) values

('Ishita','Banerjee',1999,'Bluetooth Speaker',1,4500,'ishita.banerjee@example.com'),
('Tom','Anderson',1985,'Smartphone',1,25000,'tom.anderson@example.com'),
('Harsha','Reddy',1992,'Laptop',1,72000,'harsha.reddy@example.com'),
('Clara','Mitchell',1987,'Washing Machine',1,30000,'clara.mitchell@example.com'),
('Nitin','Agarwal',1981,'Microwave Oven',1,10000,'nitin.agarwal@example.com'),
('Sophia','Turner',1994,'Smartwatch',2,16000,'sophia.turner@example.com'),
('Ajay','Krishnan',1989,'Refrigerator',1,28000,'ajay.krishnan@example.com'),
('Emma','Davis',1990,'Tablet',1,18000,'emma.davis@example.com'),
('Rakesh','Yadav',1983,'Air Conditioner',1,36000,'rakesh.yadav@example.com'),
('Olivia','Martin',1996,'Television',1,42000,'olivia.martin@example.com');

select count(*) from info;
select * from info;