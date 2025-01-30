use khatumiproject;
rename table `sales target`to sales_target;
rename table `list of order`to list_of_order;
rename table `order details`to order_details;
alter table employees_england change `Employee ID` employee_Id varchar (50);
alter table employees_england change `Job Title` job_title varchar (100);
alter table employees_england change `Phone Number` phone_number varchar(100) ;
alter table sales_target change `Month of Order Date` month_of_order_date varchar(100) ;
alter table order_details change `Order Id` order_id varchar(100) ;
alter table order_details change `Sub-Category` sub_category varchar(100) ;
alter table list_of_orders change `Order ID` Order_Id varchar(100) ;
alter table list_of_orders change `Order Date` Order_date varchar(100) ;
--- Q1 report all data from the employees_england table. ---
 select * from employees_england;
 --- Q2 Report shows the employee id and job title from the employees_england table sort by employee id. ---
 select employee_Id , job_title
 from employees_england
 order by employee_Id Asc;
 --- shows the Name, Job title, email, and phone number from the employees england table, sorted by phone.---
select Name ,job_title, Email, phone_number
from employees_england
order by phone_number desc;
--- shows the lower capitail Name renamed as Name to  Full_name,  sorted from salary.---
select concat(lower(Name)) as Full_name, Salary
from employees_england
order by Salary asc;
 --- shows the top 10 month of order, category, target from the sales target table, sorted by target in descending order.---
 select month_of_order_date, Category,Target
 from sales_target
 order by Target desc
 limit 10;
---  showing the contact name, order date, state and city of all customers from list of order table---
select CustomerName, Order_date, City,State
from list_of_orders;
--- report that shows all the employees id where the salary is more than 80000 ---
 select * from employees_england
 where Salary >= 80000;
 --- report that shows the order id, amount, profit, sub category and quantity from Order details with the top 10 lowest qauntity. ---
select order_id, Amount, Profit, Quantity, sub_category
from order_details
order by Quantity asc
limit 10;
 --- report that shows the city, customername, and order id of customers from order of list that have the letter "k" in the citees, sorted by contact name ---
 select City, CustomerName, Order_Id
 from list_of_orders
 where City like '%K%'
 order by CustomerName;
 ---  report that shows the name, email, phone, city, and job title from the employees table, sorted by the city in descending order, then by name in ascending order ---
 select Name, Email, Job_title, phone_number, City
 from employees_england
 order by City desc, Name asc;
 ---  report that shows the employee id and name of all customers from  employees table with "kimberley."---
 select employee_Id, Name
 from employees_england
 where Name like '%Kimberley%';
 --- a report showing all the even numbers of order IDs from the orders table
 select Order_Id
 from list_of_orders
 where mod(order_Id,2)=0;
 --- a report showing all the odd numbers of order IDs from the orders details table---
 select order_id
 from order_details
 where mod(order_id,2)<>1;
 --- a report that shows the category, target, and date of month of order date in apr-18 ---
 select month_of_order_date, Category, Target
 from sales_target
 where month_of_order_date = 'Apr-18';
 --- report that shows the customername of all customers that do not have the letter "A" as the second letter in their contact name.---
select CustomerName 
from list_of_orders
where substr(CustomerName, 2,1)<>'A';

 