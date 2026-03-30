&#x09;

&#x09;



##### **DDL (Data Definition Language) Practical Questions**

##### 

1\. Create a table:

Write an SQL query to create a table named Employees with the following columns:

o EmpID (Primary Key, Integer)

o Name (VARCHAR, not null)

o Department (VARCHAR)

o Salary (Decimal)



ANS-create table employees (empid int,

name char(60),

department varchar(100),

salary decimal);



2\. Modify table structure:

Write an SQL query to add a new column JoiningDate (DATE) to the Employees

table.



ANS-alter table employees add

joiningdate date;





3\. Rename a column:

Rename the Salary column to AnnualSalary in the Employees table.



ANS-alter table employees change

ANNUALsalary

salary decimal;



4\. Delete a column:

Write a query to remove the Department column from the Employees table.



ANS-Alter Table Employees

Drop Column Department;



5\. Create an index:

Create an index on the Name column in the Employees table for faster search.



ANS-CREATE INDEX idx\_name

ON Employees(Name);



6\. Drop a table:

Write a query to remove the Employees table from the database.



ANS-DROP TABLE Employees;



7\. Create a table with constraints:

Create a Customers table with a unique constraint on Email and a check constraint

that ensures Age is greater than 18.





ANS-CREATE TABLE Customers (

&#x20;   CustomerID INT PRIMARY KEY,

&#x20;   Name VARCHAR(50),

&#x20;   Email VARCHAR(100) UNIQUE,

&#x20;   Age INT CHECK (Age > 18)

);





##### **DML (Data Manipulation Language) Practical Questions.**

##### 

&#x20;

1\. Insert records into a table:

Insert three employees into the Employees table.





ANS-INSERT INTO Employees ( empid,Name, annualsalary,joiningdate,department)

VALUES

(101,'Amit Sharma',60000,'2019-07-15','IT'),

(102,'Priya Singh', 55000,'2017-06-10','HR'),

(103,'Rajesh Kumar',50000,'2018-08-22','FINANCE'),

(104,'Anjali Verma',70000,'2021-01-12','SALES'),

(105,'Suresh Mehta',65000,'2015-03-25','HR'),

(106,'Neha Gupta',58000,'2020-09-18','IT');





2\. Update a record:

&#x20;

Increase the salary of employees in the 'HR' department by 10%.





ANS-UPDATE EMPLOYEES

SET ANNUALSALARY=ANNUALSALARY+(ANNUALSALARY\*0.10)

WHERE DEPARTMENT ='HR';





3\. Delete a specific record:

Remove an employee with EmpID = 101 from the Employees table.



ANS-SELECT\*FROM EMPLOYEES

WHERE ANNUALSALARY>50000;





4\. Retrieve specific records using WHERE:

Fetch all employees whose salary is greater than 50,000.





ANS-SELECT\*FROM EMPLOYEES

WHERE ANNUALSALARY>50000;





5\. Use ORDER BY to sort results:

Retrieve all employee names in descending order of their salaries.



ANS-SELECT NAME FROM EMPLOYEES ORDER BY ANNUALSALARY DESC;





6\. Use GROUP BY and HAVING:

Find the average salary of employees in each department, only displaying departments

where the average salary is greater than 60,000.



ANS-SELECT DEPARTMENT,AVG(SALARY) AS AVGSALARY

FROM  EMPLOYEES

GROUP BY DEPARTMENT

HAVING AVG(SALARY)>60000;





7\. Join two tables:

Suppose you have another table Departments with DeptID and DeptName. Write a

query to retrieve employee names along with their department names using JOIN.



ANS-SELECT Employees.EmpName, Departments.DeptName

FROM Employees

INNER JOIN Departments

ON Employees.DeptID = Departments.DeptID;







8\. Use INSERT INTO ... SELECT:

Copy all employees earning more than 70,000 into an EmployeesBackup table.



&#x20;

ANS-INSERT INTO EMPLOYEESBACKUP(EMPID,NAME,DEPARTMENT,SALARY)

SELECT EMPID,NAME,DEPARTMENT,SALARY

FROM EMPLOYEES

WHERE SALARY >70000;



##### **TCL (Transaction Control Language) Practical Questions**



1\. Use BEGIN TRANSACTION with ROLLBACK:

o Start a transaction.

o Insert a new employee.

o Rollback the transaction and check if the employee still exists.



ANS-START TRANSACTION;

INSERT  INTO  EMPLOYEES (EMPID,NAME,DEPARTMENT,SALARY)

VALUES (201,'ROHIT','IT', 55000);

ROLLBACK;

SELECT\* FROM  EMPLOYEES

WHERE EMPID=201;



2\. Use SAVEPOINT:

o Start a transaction.

o Insert two employees.

o Create a savepoint after the first insertion.

o Rollback to the savepoint and check which records remain.





ANS-START TRANSACTION;

INSERT  INTO  EMPLOYEES (EMPID,NAME,DEPARTMENT,SALARY)

VALUES (202,'RAM','HR', 60000);

SAVEPOINT SP1;

INSERT  INTO  EMPLOYEES (EMPID,NAME,DEPARTMENT,SALARY)

VALUES (203,'VIKAS','FINANCE', 65000);



ROLLBACK TO SP1;

&#x20;SELECT\*FROM EMPLOYEES;





3\. Use COMMIT to finalize changes:

o Start a transaction.

o Update the salary of an employee.

o Commit the transaction.

o Verify if the change is permanent.





ANS- START TRANSACTION;

&#x20;UPDATE EMPLOYEES

&#x20;SET SALARY=SALARY+5000

&#x20;WHERE EMPID=102;

&#x20;COMMIT;

&#x20;SELECT\* FROM EMPLOYEES

&#x20;WHERE EMPID=102;





4\. Test if ROLLBACK works with DELETE but not TRUNCATE:

o Start a transaction.

o Delete all records from Employees.

o Rollback the transaction and verify if records are restored.

o Try the same with TRUNCATE and check if rollback is possible.



ANS-START TRANSACTION;

&#x20;DELETE FROM EMPLOYEES;

&#x20;rollback;

&#x20;SELECT\* FROM  employees;

&#x20;

