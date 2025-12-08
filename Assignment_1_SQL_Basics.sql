# Ques1: Create a New Database and  Table for Employees

CREATE DATABASE company_db;

CREATE TABLE employees ( employee_id INT PRIMARY KEY , 
                         first_name VARCHAR(50),
                         last_name VARCHAR(50),
                         department VARCHAR(50),
                         salary INT,
                         hire_date DATE);
                         
                         
                         
                         
                         
                         
                         
 # Ques2: Insert Data into Employees Table
 
 INSERT INTO employees 
                       VALUES ( 101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
                              (102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
                              (103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
                              (104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
                              (105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');
                              
                              
                              
                              
                              
                              
                              
# QueS3: Display All Employee Records Sorted by Salary (Lowest to Highest)
 
 SELECT * FROM  employees
 ORDER BY salary ASC;
 
 
 
 
 
 
 
#Ques4:  Show Employees Sorted by Department (A–Z) and Salary (High - Low)

SELECT * FROM employees
ORDER BY Department ASC, Salary DESC;







#Ques5:- List All Employees in the IT Department, Ordered by Hire Date (Newest First)

SELECT * FROM employees
WHERE Department = 'IT'
ORDER BY hire_date DESC;







# Ques:-6. Create and Populate a Sales Table
# Task: Create a table sales to track sales data:

CREATE TABLE sales (sale_id INT PRIMARY KEY AUTO_INCREMENT,
					customer_name VARCHAR(30),
                    amount INT ,
                    sale_date DATE );
            
INSERT INTO sales (customer_name, amount, sale_date )
                 VALUES('Aditi', 1500,'2024-08-01'),
					   ('Rohan', 2200, '2024-08-03'),
                       ('Aditi', 3500, '2024-09-05'),
                       ('Meena', 2700, '2024-09-15'),
                       ('Rohan', 4500, '2024-09-25'); 
                       
                       
                       
                       
                       
                       
                       
                       
 #. Ques7:-Display All Sales Records Sorted by Amount (Highest → Lowest)                    
                    
SELECT * FROM sales 
ORDER BY amount DESC;








# Ques8:-Show All Sales Made by Customer “Aditi”

SELECT * FROM sales
WHERE customer_name = 'Aditi';









/* 
Ques9:-What is the Difference Between a Primary Key and a Foreign Key?

Ans:- 1. Primary Key
	     Uniquely identifies each row in a table
         Cannot be NULL
	     A table can have only one primary key
         Ensures records are unique
      
     2. Foreign Key
        Creates a relationship between two tables
        References the Primary Key of another table
        Can contain duplicate values
        Can be NULL
		Ensures referential integrity (data stays consistent) 
*/

CREATE TABLE diffrances ( Feature VARCHAR(50),
                          primary_key VARCHAR(50),
                          forigen_key VARCHAR(50));
  
INSERT INTO diffrances 
                      VALUES('Purpose', 'Uniquely identifies a row', 'Links two tables'),
							('NULL allowed?','No','Yes'),
                            ('Duplicate allowed?','No','Yes'),
                            ('Number per table', 'Only 1','Can have many'),
                            ('Defined in','Same table','Child table referencing parent');
#Answer:- Run the below given command.
SELECT * FROM diffrances;   








       
/*
Ques10. What Are Constraints in SQL and Why Are They Used?

Ans:-Constraints are rules applied to table columns in SQL to control the type of data that can be stored in a table.
They ensure data accuracy, consistency, and reliability.

Why Are Constraints Used?
To prevent invalid data from being inserted
To maintain data integrity
To protect relationships between tables
To ensure consistency in the database

Types of SQL Constraints
Constraint	Purpose
PRIMARY KEY -	Uniquely identifies each record; no NULL allowed
FOREIGN KEY -	Maintains link between tables; ensures referential integrity
UNIQUE -	Ensures all values in a column are unique
NOT NULL - Prevents NULL values in a column
CHECK -	Ensures data meets a specific condition
DEFAULT -	Sets a default value when no value is provided
*/
			
