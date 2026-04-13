assignment-3

CREATE TABLE EmployeeDetails2 (
 EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
 Name VARCHAR(50),
 Age INT,
 Department 
VARCHAR(50),
 Salary DECIMAL(10,2),
 City VARCHAR(50),
 Experience INT,
 JoiningDate DATE
);

INSERT INTO EmployeeDetails2 (Name, Age, Department, Salary, City, Experience, 
JoiningDate) VALUES
('Amit Sharma', 28, 'IT', 60000, 'Delhi', 5, '2019-07-15'),
('Priya Singh', 32, 'HR', 55000, 'Mumbai', 7, '2017-06-10'),
('Rajesh Kumar', 29, 'Finance', 62000, 'Delhi', 6, '2018-08-22'),
('Anjali Verma', 26, 'Marketing', 50000, 'Bangalore', 3, '2021-01-12'),
('Suresh Mehta', 34, 'Sales', 65000, 'Pune', 9, '2015-03-25'),
('Neha Gupta', 27, 'IT', 58000, 'Hyderabad', 4, '2020-09-18'),
('Vikram Choudhary', 35, 'HR', 70000, 'Chennai', 10, '2014-07-05'),
('Manoj Tiwari', 30, 'Finance', 63000, 'Kolkata', 6, '2018-10-30'),
('Sunita Reddy', 25, 'Marketing', 51000, 'Bangalore', 2, '2022-02-17'),
('Arun Joshi', 40, 'Sales', 72000, 'Delhi', 12, '2010-05-28'),
('Deepak Malhotra', 31, 'IT', 62000, 'Mumbai', 6, '2018-11-09'),
('Pooja Thakur', 28, 'HR', 57000, 'Pune', 5, '2019-12-20'),
('Ravi Kapoor', 36, 'Finance', 70000, 'Hyderabad', 11, '2013-06-14'),
('Sneha Patil', 29, 'Marketing', 54000, 'Chennai', 4, '2020-08-19'),
('Tarun Goel', 33, 'Sales', 68000, 'Kolkata', 8, '2016-04-07'),
('Megha Nair', 27, 'IT', 60000, 'Delhi', 5, '2019-01-10'),
('Ashish Sinha', 31, 'HR', 65000, 'Bangalore', 7, '2017-09-25'),
('Ramesh Yadav', 38, 'Finance', 71000, 'Mumbai', 12, '2010-11-05'),
('Komal Jain', 26, 'Marketing', 53000, 'Pune', 3, '2021-05-03'),
('Sanjay Dutta', 39, 'Sales', 75000, 'Hyderabad', 14, '2009-07-12'),
('Asha Rao', 30, 'IT', 59000, 'Chennai', 6, '2018-12-21'),
('Vivek Das', 29, 'HR', 62000, 'Kolkata', 5, '2019-04-28'),
('Kiran Bhat', 41, 'Finance', 72000, 'Delhi', 15, '2008-10-10'),
('Divya Goyal', 24, 'Marketing', 52000, 'Bangalore', 2, '2022-07-16'),
('Naveen Chopra', 36, 'Sales', 73000, 'Mumbai', 10, '2012-03-05');
 						ASSIGNMENT- 3



3. WHERE Clause Questions

• Retrieve details of employees who are in the IT department and earn more than
60,000
ANS-
WHERE department = 'IT' AND salary > 60000;

• Find all employees who are older than 30 years and work in Bangalore or
Hyderabad.
ANS-
SELECT * FROM employees
WHERE age > 30 AND city IN ('Bangalore', 'Hyderabad');

• Get the details of employees who joined before 2019 but have less than 5 years of
experience.
ANS-
SELECT * FROM employees
WHERE join_date < '2019-01-01' AND experience < 5;

• Retrieve employees from the Finance department whose salary is between 55,000
and 70,000.
ANS- 
WHERE department = 'Finance'
AND salary BETWEEN 55000 AND 70000;

• Find all employees except those from the HR department who have more than 8
years of experience.
ANS-
SELECT * FROM employees
WHERE department <> 'HR' AND experience > 8;

• Retrieve all employees from the Sales department.
ANS
SELECT * FROM employees
WHERE department = 'Sales';

• Find employees who live in Mumbai and are older than 30 years.
ANS
SELECT * FROM employees
WHERE city = 'Mumbai' AND age > 30;

• Get details of employees who earn more than 60,000.
ANS
SELECT * FROM employees
WHERE salary > 60000;

• Retrieve employees who joined after 2020-01-01.
ANS-
SELECT * FROM employees
WHERE join_date > '2020-01-01';

• Find employees who have less than 5 years of experience.
ANS
SELECT * FROM employees
WHERE experience < 5;

• Get all employees except those in the HR department.
ANS
SELECT * FROM employees
WHERE department <> 'HR';

• Find employees with 'Kumar' in their name.
ANS-
SELECT * FROM employees
WHERE emp_name LIKE '%Kumar%';

4. GROUP BY & Aggregation Questions

• Count the number of employees in each department.
ANS
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

• Find the average salary of employees in each city.
ANS
SELECT city, AVG(salary) AS avg_salary
FROM employees
GROUP BY city;

• Identify the total number of employees who joined in each year.
ANS-
SELECT YEAR(join_date) AS join_year, COUNT(*) AS total_employees
FROM employees
GROUP BY YEAR(join_date);

• List the minimum and maximum salaries for each department.
ANS-
SELECT department,
MIN(salary) AS min_salary,
MAX(salary) AS max_salary
FROM employees
GROUP BY department;

• Find the total salary expenditure for each department.
ANS-
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

• Count how many employees live in each city.
ANS-
SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city;

• Retrieve cities where there are more than 10 employees.
ANS-
SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city
HAVING COUNT(*) > 10;

• Find the total salary paid to employees in each department.
ANS-
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

• List the youngest and oldest employees in each department.
ANS-
SELECT department,
MIN(age) AS youngest_employee,
MAX(age) AS oldest_employee
FROM employees
GROUP BY department;

• Find departments where the average experience is more than 7 years.
ANS -
SELECT department, AVG(experience) AS avg_experience
FROM employees
GROUP BY department
HAVING AVG(experience) > 7;

• Get the most common department in the company.
ANS
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY total_employees DESC
LIMIT 1;

• Retrieve the department with the highest total salary expenditure.
ANS
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;

5. HAVING & ORDER BY Questions

• Retrieve departments where the average salary is more than 60,000.
ANS
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

• Find cities where the total number of employees is greater than 10, sorted in
descending order.
ANS
SELECT city, COUNT(*) AS total_employees
FROM employees
GROUP BY city
HAVING COUNT(*) > 10
ORDER BY total_employees DESC;

• Identify departments with more than 5 employees and order them by total
experience in descending order.
ANS
SELECT department,
COUNT(*) AS total_employees,
SUM(experience) AS total_experience
FROM employees
GROUP BY department
HAVING COUNT(*) > 5
ORDER BY total_experience DESC;

• Get the top 5 highest-paid employees.
ANS
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 5;

• Find employees who have been working for more than 10 years, sorted by joining
date.
ANS
SELECT * FROM employees
WHERE experience > 10
ORDER BY join_date;

• Get all employees sorted by Salary in descending order.
ANS
SELECT * FROM employees
ORDER BY salary DESC;

• Count the number of employees who joined each year.

ANS
SELECT YEAR(join_date) AS join_year, COUNT(*) AS total_employees
FROM employees
GROUP BY YEAR(join_date);

6. Advanced SQL Questions

• Find employees who earn more than the average salary of their department.
ANS
SELECT *
FROM employees e
WHERE salary >
(SELECT AVG(salary)
FROM employees
WHERE department = e.department);

• Get the second highest salary in the company.
ANS
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

• Find employees who joined in the last 3 years using DATEDIFF.
ANS
SELECT *
FROM employees
WHERE DATEDIFF(CURDATE(), join_date) <= 3 * 365;

• Get the employee with the highest salary in each department.
ANS
SELECT *
FROM employees e
WHERE salary =
      (SELECT MAX(salary)
       FROM employees
       WHERE department = e.department);

• Find employees whose experience is above the department’s average experience.
ANS
SELECT *
FROM employees e
WHERE experience >
      (SELECT AVG(experience)
       FROM employees
       WHERE department = e.department);