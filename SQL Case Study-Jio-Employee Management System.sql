create database casestudy2;
use casestudy2;
# create table 
create table department(
         Dept_Code  int primary key,
         Dept_Name varchar(100),
         Dept_Budget bigint);

#insert values 
insert into department (Dept_Code, Dept_Name, Dept_Budget) values
(23, 'Sales and Marketing', 50000000),
(66, 'Information Technology', 100000000),
(43, 'Customer Service', 30000000),
(33, 'Human Resources', 20000000),
(76, 'Finance and Accounting', 40000000),
(47, 'Operations', 60000000);

#create table 
create table employee(
            Emp_id bigint primary key,
            First_Name varchar(50),
            Last_Name varchar(50),
            Dept_Code int, 
            foreign key (Dept_code) references department(Dept_code));

#insert values 
insert into employee(Emp_id,First_Name,Last_Name,Dept_code) values 
(248132604, 'Shivam', 'Deo', 76),
(815242185, 'Parijat', 'Shankar', 23),
(46122768, 'Rahul', 'Srivastava', 66),
(960828099, 'Kumar', 'Swamy', 47),
(440341783, 'Shashi', 'Khurrana', 23),
(85159480, 'Swapnil', 'Mehta', 43),
(685976787, 'Arvind', 'Chatterjee', 23),
(585608105, 'Jalpesh', 'Modi', 33),
(378928065, 'Vivek', 'Yadav', 23),
(719823755, 'Sanjay', 'Zahwule', 66),
(879340809, 'Sanjay', 'Shukla', 76),
(948175766, 'Ragini', 'Malhotra', 33),
(898089976, 'Javed', 'Khan', 23),
(683931313, 'Vikram', 'Singh', 43),
(861990021, 'Ajay', 'Kumar', 23),
(980140890, 'Pankaj', 'Verma', 43),
(75063819, 'Roshan', 'Singh', 47),
(55888583, 'Suninda', 'Yadav', 76),
(392445085, 'Bhawna', 'Sharma', 66),
(18488082, 'Pooja', 'Kumari', 47);

select * from department;
select * from employee;

#Questions:
#1.	What are the unique Last_Names from the Employee Table?
select distinct last_name from employee e ;

#2.	What is the total number of employees in the company?
select count(distinct emp_id)as total_employees from employee e ;

#3.	What is the total budget for the company?
select sum(dept_budget)as total_budget from department d ;

#4.	What is the department code and budget for the "Operations" department?
select dept_code, dept_budget from department d 
where dept_name = "Operations";

#5.	What is the total budget for the "Information Technology" and "Finance and Accounting" departments?
select sum(dept_budget) as total_budget from department d 
where dept_name in ('Information Technology','Finance Accounting');

#6.	Who are the employees working in the "Sales and Marketing" department?
select e.emp_id , e.first_name,e.last_name from employee e 
join department d on d.dept_code = e.dept_code
where d.dept_name = 'Sales and Marketing';

#7.	What is the name of the employee with Emp_ID 718929853?
select first_name,last_name from employee e 
where emp_id = 718929853;

#8.	What is the budget for the "Customer Service" department?
select dept_budget from department d 
where dept_name = 'Customer Service';

#9.	What is the total budget for all departments except "Operations"?
select sum(dept_budget) as total_budget from department d 
where dept_name != 'Operations';

#10.What is the Emp_ID, First_Name and department_code of the employee with the last name "Shukla"?
select emp_id, first_name, dept_code from employee e 
where last_name = 'Shukla';

#11.What is the average budget for the departments with Dept_Code 23 and 43?
select avg(dept_budget)as avg_budget from department d 
where dept_code in (23,43);

#12.How many employees are there whose first name starts with the letter "S"?
select count(emp_id) from employee e 
where first_name like 'S%';

#13.List the name of Employees whose First_name starts with "S"
select * from employee e 
where first_name like 'S%';

#14.List the name of Employees whose First_name starts with "S" and ends with "A".
select * from employee e 
where first_name like 'S%A';

#15.Fetch Top 3 records of all the Departments in descending order based on the budget of the department.
select * from department d 
order by dept_budget desc
limit 3;

#16.Fetch data of all employees from the employee table whose dept_code is an odd number
select * from employee e 
where dept_code % 2 = 1;

#17.Create a clone of the table employee with a name Clone_table and having two columns, one with full name and the other with the department code with an alias D_Code
create table Clone_table(Full_name varchar(50),
                         D_code int);

insert into Clone_table(Full_name, D_code)
select concat(first_name,' ',last_name),dept_code from employee;
select * from clone_table;

#18.Delete employee details of "Ajay Kumar" from Clone_Table
delete from clone_table 
where full_name = 'Ajay kumar';

#19.The name of the employee "rahul Srivasatava" has a lower case 'r', make changes in the clone table so that the full_name is written as "Rahul Srivastava" 
update clone_table 
set full_name = 'Rahul Srivastava'
where full_name = 'rahul Srivastava';

select * from clone_table
where full_name like '%Srivastava';

#20.Convert Full_name from clone table into uppercase.
select upper(full_name) as full_name from clone_table;

#21.Fetch second to fifth record from the department table based on the Highest Budget.
select dept_budget from department d 
order by dept_budget desc
limit 4
offset 1;

#22.The employee with the name "Jalpesh Modi" has decided to move into another department, delete the D_code value corresponding to "Jalpesh_Modi" from the clone_table
update clone_table ct 
set D_code = null
where full_name = 'Jalpesh Modi';

#23.Change the name of the column D_Code to Department_code in clone table.
alter table clone_table rename column D_Code to Department_code;
select * from clone_table ct ;

#24.Since no mathematical operation will be performed on emp_id in employee table, convert its data type from int to varchar
alter table employee modify emp_id varchar(50);

#25.The Company has decided to increase the budget of all the department by 10% , make changes accordingly to fetch old and new budget
select Dept_Code,Dept_Name,Dept_Budget as old_budget , dept_budget * 1.1 as new_budget from department d ;

#26.What is the name of the department with the lowest budget?
select dept_name, dept_budget from department d
where dept_budget  = (select min(dept_budget)from department );

#27.Who are the employees working in the departments with budgets greater than 40,000,000?
select e.emp_id, e.first_name , e.last_name, d.dept_budget from employee e 
join department d on d.dept_code = e.dept_code
where d.dept_budget > 40000000;

#using sub query
select * from employee e 
where dept_code in (select dept_code from department d where dept_budget > 40000000);

#28.What is the name of the department with the second highest budget?
select dept_code, dept_name, dept_budget from department
order by dept_budget desc
limit 1 
offset 1;

#sub query
select * from Department where dept_budget = ( 
select max(dept_budget) from department where dept_budget< (select max(dept_budget) from department));

#29.How many employees are there in each department?
select d.dept_name, count(*) as employee_count from department d 
join employee e on d.dept_code = e.dept_code
group by d.dept_name;

#30.Create a view of Employees working in Sales and Marketing department only.
create view sales_marketing_info as
select e.*, d.dept_name
from employee e
join department d on e.dept_code = d.dept_code
where d.dept_name in ('sales and marketing');

select * from sales_marketing_info;

