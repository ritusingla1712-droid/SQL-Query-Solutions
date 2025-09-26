create database blinkit;
use blinkit;

#Questions:

#1.Import Data from table Grocery Sales using the provided CSV File.
select * from blinkit_grocery bg ;

#2.Write an SQL query to show all Item_Identifier
select distinct(item_identifier) from blinkit_grocery bg;

#3.Write an SQL query to show count of total Item_Identifier.
select count(distinct(item_identifier)) as total_item_identifier from blinkit_grocery bg;

#4.Write an SQL query to show maximum Item Weight.
select * from blinkit_grocery bg 
where bg.item_weight = (select max(item_weight) as max_item_weight from blinkit_grocery);

 select max(item_weight) as max_item_weight from blinkit_grocery;
 
#5.Write an SQL query to show minimum Item Weight.
 select min(item_weight) as min_item_weight from blinkit_grocery bg ;

#6.Write an SQL query to show average Item_Weight.
select round(avg(item_weight),2) as avg_item_weight from blinkit_grocery bg;

#7.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(item_fat_content) as count_of_low_fat_item_fat_content  from blinkit_grocery bg 
where bg.item_fat_content = "Low Fat";

#8.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content) as count_of_regular_fat_item_fat_content  from blinkit_grocery bg 
where bg.item_fat_content = "Regular";

#9.Write an SQL query to show maximum Item_MRP 
select max(item_mrp)as max_mrp from blinkit_grocery bg ;

#10.Write an SQL query to show minimum Item_MRP
select min(item_mrp)as min_mrp from blinkit_grocery bg ;

#11.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select item_identifier , item_fat_content ,item_type, item_mrp from blinkit_grocery bg
where bg.item_mrp > 200;

#12.Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(item_mrp) as max_mrp from blinkit_grocery bg 
where bg.item_fat_content = "Low Fat";

#13.Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
select min(item_mrp) as min_mrp from blinkit_grocery bg 
where bg.item_fat_content = "Low Fat";

#14.Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from blinkit_grocery bg 
where bg.item_mrp between 50 and 100;

#15.Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct(item_fat_content) as unique_item_fat_content from blinkit_grocery bg ;

#16.Write an SQL query to show ALL UNIQUE value of  Item_Type 
select distinct(item_type) as unique_item_types from blinkit_grocery bg ;

#17.Write an SQL query to show ALL DATA in descending ORDER by Item MRP 
select * from blinkit_grocery bg 
order by bg.item_mrp desc ;

#18.Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from blinkit_grocery bg 
order by bg.item_outlet_sales ;

#19.Write an SQL query to show ALL DATA in ascending by Item_Type 
select * from blinkit_grocery bg 
order by bg.item_type;

#20.Write an SQL query to show DATA of item_type dairy & Meat
select * from blinkit_grocery bg 
where item_type in('Dairy','Meat');

#21.Write an SQL query to show ALL UNIQUE value of Outlet_Size 
select distinct(outlet_size)as unique_outlet_size from blinkit_grocery;

#22.Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct(outlet_location_type) as unique_outlet_location_type from blinkit_grocery bg ;

#23.Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct(outlet_type) as unique_outlet_type from blinkit_grocery bg ;

#24.Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select bg.item_type ,count(*) as item_count from blinkit_grocery bg 
group by bg.item_type 
order by item_count  desc;

#25.Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select outlet_size, count(*) as outlet_size_count from blinkit_grocery bg
group by bg.outlet_size 
order by outlet_size_count ;

#26.Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
select outlet_type, count(*) as outlet_type_count from blinkit_grocery
group by outlet_type 
order by outlet_type_count desc;

#27.Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
select outlet_location_type, count(*) as outlet_location_type_count from blinkit_grocery
group by outlet_location_type 
order by outlet_location_type_count desc;

#28.Write an SQL query to show maximum MRP by Item_Type
select item_type,max(item_mrp) as max_mrp from blinkit_grocery
group by item_type
order by max_mrp desc;

#29.Write an SQL query to show minimum MRP by Item_Type 
select item_type,min(item_mrp) as min_mrp from blinkit_grocery
group by item_type
order by min_mrp desc;

#30.Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year,min(item_mrp)as min_mrp from blinkit_grocery
group by outlet_establishment_year 
order by min_mrp desc;

#31.Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year,max(item_mrp)as max_mrp from blinkit_grocery
group by outlet_establishment_year 
order by max_mrp desc;

#32.Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_size,round(avg(item_mrp),2)as avg_mrp from blinkit_grocery bg 
group by bg.outlet_size 
order by avg_mrp desc;

#33.Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_type,round(avg(item_mrp),2)as avg_mrp from blinkit_grocery bg 
group by bg.outlet_type 
order by avg_mrp asc ;

#34.Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type,max(item_mrp)as mrp_mrp from blinkit_grocery bg 
group by bg.outlet_type ;

#35.Write an SQL query to show maximum Item_Weight by Item_Type
select item_type, max(item_weight) as max_item_weight from blinkit_grocery bg 
group by bg.item_type 
order by max_item_weight;

#36.Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select outlet_establishment_year,max(item_weight) as max_item_weight from blinkit_grocery bg 
group by bg.outlet_establishment_year 
order by max_item_weight ;

#37.Write an SQL query to show minimum Item_Weight by Outlet_Type
select outlet_type , min(item_weight) as min_item_weight from blinkit_grocery bg 
group by outlet_type 
order by min_item_weight ;


#38.Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select outlet_location_type,round(avg(item_weight),2) as avg_item_weight from blinkit_grocery bg 
group by bg.outlet_location_type 
order by avg_item_weight desc;

#39.Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select item_type, max(item_outlet_sales) as max_outlet_sales from blinkit_grocery bg 
group by bg.item_type 
order by max_outlet_sales ;

#40.Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
select item_type, min(item_outlet_sales) as min_outlet_sales from blinkit_grocery bg 
group by bg.item_type 
order by min_outlet_sales ;

#41.Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select outlet_establishment_year,min(item_outlet_sales) as min_item_outlet_sales from blinkit_grocery bg 
group by bg.outlet_establishment_year ;

#42.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select outlet_establishment_year,max(item_outlet_sales) as max_item_outlet_sales from blinkit_grocery bg 
group by bg.outlet_establishment_year 
order by max_item_outlet_sales desc;

#43.Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select outlet_size, round(avg(item_outlet_sales),2) as avg_outlet_sales from blinkit_grocery bg 
group by bg.outlet_size 
order by avg_outlet_sales desc;

#44.Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select outlet_type, round(avg(item_outlet_sales),2) as avg_outlet_sales from blinkit_grocery bg 
group by bg.outlet_type 
order by avg_outlet_sales desc;

#45.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 
select outlet_type , max(item_outlet_sales) as max_outlet_sales from blinkit_grocery bg 
group by bg.outlet_type 
order by max_outlet_sales ;

#46.Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select item_type, round(sum(item_outlet_sales),2) as total_item_outlet_sales from blinkit_grocery bg 
group by bg.item_type 
order by total_item_outlet_sales ;

#47.Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 
select item_fat_content,round(sum(item_outlet_sales),2) as total_item_outlet_sales from blinkit_grocery bg 
group by item_fat_content;

#48.Write an SQL query to show maximum Item_Visibility by Item_Type
select item_type, max(item_visibility) as max_item_visibility from blinkit_grocery bg 
group by bg.item_type ;

#49.Write an SQL query to show Minimum Item_Visibility by Item_Type 
select item_type, min(item_visibility) as min_item_visibility from blinkit_grocery bg 
group by bg.item_type ;

#50.Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
select item_type,round(sum(item_outlet_sales),2) as total_outlet_sales from blinkit_grocery bg 
where outlet_location_type = "Tier 1"
group by bg.item_type ;

#51.Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select item_type,round(sum(item_outlet_sales),2) as total_outlet_sales from blinkit_grocery bg 
where item_fat_content in ("Low Fat","LF")
group by bg.item_type ;