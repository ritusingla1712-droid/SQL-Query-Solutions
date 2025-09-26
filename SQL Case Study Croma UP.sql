create database casestudy4;
use casestudy4;
# create tables 
create table Products(
                 Product_Code int,
                 Product_Name varchar(50),
                 Product_Price int,
                 Manufacturer_Code int);
#insert values 
insert into products(Product_Code,Product_Name,Product_Price,Manufacturer_Code)values 
(1, '1 TB Hard Disk Drive', 2500, 1),
(2, 'Printer', 6500, 3),
(3, '64 GB Pen Drive', 700, 6),
(4, '6 GB Graphic Card', 12800, 5),
(5, '22 Inches Monitor', 10600, 2),
(6, '512 GB Solid State Drive', 4200, 1),
(7, 'Mouse', 400, 6),
(8, '450 Watt Power Supply Unit', 3600, 4),
(9, 'Printer Cartridge', 2500, 3),
(10, 'Membrane Keyboard', 900, 4),
(11, 'Bluetooth Speakers', 2000, 10),
(12, '42 Inches Television', 24600, 2),
(13, 'CPU Cabinet', 1900, 6),
(14, 'Laptop Adjustable Stand', 1250, 7),
(15, '8 GB RAM', 2600, 4),
(16, 'Motherboard', 6500, 8),
(17, 'Ergonomic Chair', 9700, 6),
(18, 'Monitor Arm Stand', 2600, 7),
(19, 'Wifi Adapter', 300, 9),
(20, 'HD Webcam', 1000, 8);

#create tables
create table Manufacturers(
               Manufacture_Code int,
               Manufacturer_Name varchar(50));

#insert values 
insert into Manufacturers(Manufacture_Code,Manufacturer_Name) values
(1, 'Western Digital'),
(2, 'Samsung'),
(3, 'Hewlett Packard'),
(4, 'Corsair'),
(5, 'Asus'),
(6, 'Ant esports'),
(7, 'Cosmic Byte'),
(8, 'Zebronics'),
(9, 'TP-Link'),
(10, 'BoAt');

select * from products;
select * from manufacturers;

#Questions
#1.Select the names of all the products in the inventory.
select distinct(product_name) from products p ;

#2.Select the names and the prices of all the products in the inventory.
select Product_Name,Product_Price from products p ;

#3.Use an Alias "Name" and print all the product names
select Product_Name as Name from products p ;

#4.Select the name of the products with a price less than or equal to 8000 Indian Rupees.
select Product_Name , Product_Price from products p 
where Product_Price >= 8000;

#5.Select all the products with a price between 2000 and 10000 Indian Rupees.
select * from products p 
where p.Product_Price between 2000 and 10000;

#6.List the details of all such products whose manufacturer_code is 6.
select * from products p 
where p.Manufacturer_Code = 6;

#7.List the details of all such products whose manufacturer_code is 6 as well as their price is greater than 5000.
select * from products p 
where p.Manufacturer_Code = 6 and p.Product_Price > 5000;

#8.List the details of all such products other than whose manufacturer_code is 6.
select * from products p 
where p.Manufacturer_Code != 6;

#9.Select the name of the products whose name starts with 'M'.
select product_name from products p 
where p.Product_Name like "M%";

#10.List the name of products whose name starts with "M" and ends with "D".
select product_name from products p 
where p.Product_Name like "M%D";

#11.List the name of products which starts from "M" ends with "D" but also has ONLY 9 characters in between.
select product_name from products p 
where p.Product_Name like "M_________D";

#12.Concatenate name of the product with its price in a single column.
select concat(Product_Name, " ",Product_Price)as Product_name_and_Price from products p ;

#13.Select the name and price in dollars (i.e. the price must be divided by 80.)
select Product_Name,Product_Price/80 as Product_Price_in_dollars from products p ;

#14.Compute the average price of all the products in Indian Rupees.
select avg(Product_Price) as avg_price from products;

#15.Compute the average price of all products with manufacturer code equal to 3.
select avg(Product_Price) as avg_price from products
where Manufacturer_Code = 3;

#16.What is the total cost of products where manufacturer_code is 2?
select sum(Product_Price) as total_cost from products p 
where Manufacturer_Code = 2;

#17.Compute the number of products with a price greater than or equal to 5000.
select count(Product_Name) as number_of_products from products p 
where Product_Price >= 5000;

#18.Select the name and price of all products with a price larger than or equal to 5000 Indian Rupees and sort them by price (in descending order), and then by their name (in ascending order).
select Product_Name,Product_Price from products p 
where Product_Price >= 5000
order by p.Product_Price desc ,p.Product_Name asc;

#19.Select all the data from the inventory, including all the data for each product's manufacturer.
select p.*, m.Manufacturer_Name from products p 
join manufacturers m 
on p.Manufacturer_Code = m.Manufacture_code ;

#20.Select the product name, price, and manufacturer name of all the products.
select p.Product_Name,p.Product_Price,m.Manufacturer_Name from products p 
join manufacturers m 
on p.Manufacturer_Code = m.Manufacture_code ;

#21.Select the average price of each manufacturer's products, showing only the manufacturer's code.
select Manufacturer_Code, avg(Product_Price) as avg_price from products p 
group by manufacturer_code ;

#22.Select the average price of each manufacturer's products, showing the manufacturer's name.
select m.Manufacturer_Name, avg(Product_Price) as avg_price from products p 
join manufacturers m 
on p.Manufacturer_Code = m.Manufacture_code 
group by m.Manufacturer_Name ;

#23.Select the names of manufacturer whose products have an average price greater than or equal to 5000 Indian Rupees.
select m.Manufacturer_Name, avg(Product_Price) as avg_price from products p 
join manufacturers m 
on p.Manufacturer_Code = m.Manufacture_code 
group by m.Manufacturer_Name 
having avg_price >=5000;

#24.Select the name and price of the cheapest product.
select product_name, Product_Price from products p 
where p.Product_Price = (select min(product_price)from products);

#25.Select the name of each manufacturer along with the name and price of its most expensive product.
select p.product_name, p.Product_Price,m.Manufacturer_Name from products p 
join manufacturers m 
on p.Manufacturer_Code = m.Manufacture_code 
where p.Product_Price = (select max(product_price)from products);

#26.Add a new product: Speaker with a price 1000 INR and manufacturer code 10.
insert into products(Product_Code,Product_Name,Product_Price,Manufacturer_Code) values 
(21,"Speaker",1000,10);

#27.Update the name of the product "Speakers" to "Wired Speakers".
update products p 
set p.Product_Name = "Wired Speakers"
where p.Product_Name = "Speakers";


#28.Apply a 10% discount to all products.
update products p 
set Product_Price = p.Product_Price *0.9;

select * from products p 

#29.Apply a 10% discount to all products with a price greater than or equal to 5000 Indian Rupees.
update products p 
set Product_Price = p.Product_Price *0.9
where p.Product_Price >=5000;

#30.List the name of the products along with their manufacturer name and price and arrange them as per their price.
select p.product_name, p.product_price, m.Manufacturer_Name from products p 
join manufacturers m 
on p.Manufacturer_Code = m.Manufacture_code 
order by p.Product_Price ;