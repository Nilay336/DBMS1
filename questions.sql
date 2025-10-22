/* Q.1 Emp (Emp_ID,name,age,address,salary, DEpt_id)
Write SQL Queries to Create table and insert some values as above given schema.
Write a query to find the number of employees.
Write a query to sort the table on the basis of salary.*/

-- Create table Emp
CREATE TABLE Emp (
    Emp_ID INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    address VARCHAR(255),
    salary DECIMAL(10, 2),
    Dept_id INT
);
-- Insert some values into Emp table
INSERT INTO Emp (Emp_ID, name, age, address, salary, Dept_id) VALUES
(1, 'John Doe', 30, '123 Main St', 50000.00, 1),
(2, 'Jane Smith', 25, '456 Oak St', 60000.00, 2),
(3, 'Mike Johnson', 35, '789 Pine St', 55000.00, 1),
(4, 'Emily Davis', 28, '321 Maple St', 70000.00, 3);

-- Query to find the number of employees
SELECT COUNT(*) AS NumberOfEmployees FROM Emp;

-- Query to sort the table on the basis of salary
SELECT * FROM Emp ORDER BY salary;

/* Q.2 Emp (Emp_ID,name,age,address,salary, DEpt_id)
Write SQL Queries to Create table and insert some values as above given schema.
Write queries to display minimum, maximum, Average of salary from emp table.
Write a query to display employees details where the address is mumbai.
 */

-- Create table Emp
CREATE TABLE Emp (
    Emp_ID INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    address VARCHAR(255),
    salary DECIMAL(10, 2),
    Dept_id INT
);

-- Insert some values into Emp table
INSERT INTO Emp (Emp_ID, name, age, address, salary, Dept_id) VALUES
(1, 'John Doe', 30, 'Mumbai', 50000.00, 1),
(2, 'Jane Smith', 25, 'Delhi', 60000.00, 2),
(3, 'Mike Johnson', 35, 'Mumbai', 55000.00, 1),
(4, 'Emily Davis', 28, 'Chennai', 70000.00, 3);

-- Query to display minimum, maximum, Average of salary from emp table
SELECT 
    MIN(salary) AS MinimumSalary,
    MAX(salary) AS MaximumSalary,
    AVG(salary) AS AverageSalary FROM Emp;

-- Query to display employees details where the address is Mumbai
SELECT * FROM Emp WHERE address = 'Mumbai';

/*Q.3 Emp (Emp_ID,name,age,address,salary, DEpt_id)
Write SQL Queries to Create table and insert some values as above given schema.
Write a query to add primary Key after creating Emp table.
Write a query to Delete an employee record whose Emp_ID is 4.*/

-- Create table Emp without primary key
CREATE TABLE Emp (
    Emp_ID INT,
    name VARCHAR(100),
    age INT,
    address VARCHAR(255),
    salary DECIMAL(10, 2),
    Dept_id INT
);

-- Insert some values into Emp table
INSERT INTO Emp (Emp_ID, name, age, address, salary, Dept_id) VALUES
(1, 'John Doe', 30, '123 Main St', 50000.00, 1),
(2, 'Jane Smith', 25, '456 Oak St', 60000.00, 2),
(3, 'Mike Johnson', 35, '789 Pine St', 55000.00, 1),
(4, 'Emily Davis', 28, '321 Maple St', 70000.00, 3);

-- Query to add primary Key after creating Emp table
ALTER TABLE Emp
ADD CONSTRAINT PK_Emp PRIMARY KEY (Emp_ID);

-- Query to Delete an employee record whose Emp_ID is 4
DELETE FROM Emp WHERE Emp_ID = 4;

/*Q.4 Teacher (TName, Incharge, Salary, Gender, Dateofjoin)
Write SQL Queries to Create table and insert some values as above given schema.
Delete information of teachers who joined before ‘2015-10-01’.
Update  teacher’s Salary 11000 who are having salary  10000.*/

-- Create table Teacher
CREATE TABLE Teacher (
    TName VARCHAR(100),
    Incharge VARCHAR(100),
    Salary DECIMAL(10, 2),
    Gender VARCHAR(10),
    Dateofjoin DATE
);

-- Insert some values into Teacher table
INSERT INTO Teacher (TName, Incharge,Salary,Gender,Dateofjoin) VALUES
('Alice', 'Math', 10000.00, 'Female', '2014-05-20'),
('Bob', 'Science', 12000.00, 'Male', '2016-08-15'),
('Charlie', 'English', 10000.00, ' Male', '2013-11-30'),
('Diana', 'History', 13000.00, 'Female', '2017-01-10');

-- Delete information of teachers who joined before ‘2015-10-01’
DELETE FROM Teacher WHERE Dateofjoin < '2015-10-01';

-- Update teacher’s Salary to 11000 who are having salary 10000
UPDATE Teacher SET Salary = 11000.00 WHERE Salary = 10000.00;

/*Q.5 Teacher (TName, Incharge, Salary, Gender, Dateofjoin)
Write SQL Queries to Create table and insert some values as above given schema.
Display salary and names of teachers having salary less than 15000.
Delete teachers details who joined before ‘2016-10-01’.
*/

-- Create table Teacher
CREATE TABLE Teacher (
    TName VARCHAR(100),
    Incharge VARCHAR(100),
    Salary DECIMAL(10, 2),
    Gender VARCHAR(10),
    Dateofjoin DATE);

-- Insert some values into Teacher table
INSERT INTO Teacher (TName, Incharge,Salary,Gender,Dateofjoin) VALUES
    ('Alice', 'Math', 10000.00, 'Female', '2014-05-20'),
    ('Bob', 'Science', 12000.00, 'Male', '2016-08-15'),
    ('Charlie', 'English', 10000.00, ' Male', '2013-11-30'),
    ('Diana', 'History', 13000.00, 'Female', '2017-01-10'
    );

-- Display salary and names of teachers having salary less than 15000
SELECT TName, Salary FROM Teacher WHERE Salary < 15000.00;

-- Delete teachers details who joined before ‘2016-10-01’
DELETE FROM Teacher WHERE Dateofjoin < '2016-10-01';

/*Q.6 Emp2 (Empid, EmpName, Department, Salary, Gender)
Write SQL Queries to Create table and insert some values as above given schema.
Increase salary of all employees by 1000
Department of ‘Mahesh’ should be updated as ‘HR’
*/

-- Create table Emp2
CREATE TABLE Emp2 (
    Empid INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2),
    Gender VARCHAR(10)
);

-- Insert some values into Emp2 table
INSERT INTO Emp2 (Empid, EmpName, Department,Salary, Gender) VALUES
(1, 'Mahesh', 'IT', 50000.00, 'Male'),
(2, 'Suresh', 'Finance', 60000.00, 'Male'),
(3, 'Ramesh', 'IT', 55000.00, 'Male'),
(4, 'Kalpana', 'Marketing', 70000.00, 'Female');

-- Increase salary of all employees by 1000
UPDATE Emp2 SET Salary = Salary + 1000.00;

-- Department of ‘Mahesh’ should be updated as ‘HR’
UPDATE Emp2 SET Department = 'HR' WHERE EmpName = 'Mahesh';

/*Q.7 Emp2 (Empid, EmpName, Department, Salary, Gender)
Write SQL Queries to Create table and insert some values as above given schema.
‘Finance’ department should be updated as ‘Fin’
Set the size of EmpName field to 40. 
*/

-- Create table Emp2
CREATE TABLE Emp2 (
    Empid INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2),
    Gender VARCHAR(10)
);

-- Insert some values into Emp2 table
INSERT INTO Emp2 (Empid, EmpName, Department,Salary, Gender) VALUES
(1, 'Mahesh', 'IT', 50000.00, 'Male'),
(2, 'Suresh', 'Finance', 60000.00, 'Male'),
(3, 'Ramesh', 'IT', 55000.00, 'Male'),
(4, 'Kalpana', 'Marketing', 70000.00, 'Female');

-- ‘Finance’ department should be updated as ‘Fin’
UPDATE Emp2 SET Department = 'Fin' WHERE Department = 'Finance';

-- Set the size of EmpName field to 40
ALTER TABLE Emp2 ALTER COLUMN EmpName VARCHAR(40);

/*Q.8 Create the table name employee (Emp-Id, Name, Job, Salary and Department)
  insert five records.
 Add the three attributes(columns)-HRA, DA and "Total.
 update all employee record increasing 2000 salary for all.
*/

-- Create table employee
CREATE TABLE employee (
    Emp_Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Job VARCHAR(100),
    Salary DECIMAL(10, 2),
    Department VARCHAR(100)
);

-- Insert five records into employee table
INSERT INTO employee (Emp_Id, Name, Job, Salary, Department) VALUES
(1, 'John Doe', 'Manager', 50000.00, 'Sales'),
(2, 'Jane Smith', 'Developer', 60000.00, 'IT'),
(3, 'Mike Johnson', 'Analyst', 55000.00, 'Finance'),
(4, 'Emily Davis', 'Designer', 70000.00, 'Marketing'),
(5, 'David Wilson', 'Support', 45000.00, 'Customer Service');

-- Add the three attributes(columns)-HRA, DA and "Total
ALTER TABLE employee
ADD HRA DECIMAL(10, 2),
    ADD DA DECIMAL(10, 2),
    ADD Total DECIMAL(10, 2);

-- Update all employee record increasing 2000 salary for all
UPDATE employee SET Salary = Salary + 2000.00;

/*Q.9 Consider the following table
STUDENT(R_No, First_ Name, Last_Name, Age, Marks, Gender, Course)
 Write SQL Queries to Create table and insert some values as above given schema.
 Display name of distinct courses.
 Display all the records of STUDENT table in descending order of age of students.
*/

-- Create table STUDENT
CREATE TABLE STUDENT (
    R_No INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Age INT,
    Marks DECIMAL(5, 2),
    Gender VARCHAR(10),
    Course VARCHAR(100));

-- Insert some values into STUDENT table
INSERT INTO STUDENT (R_No, First_Name, Last_Name, Age, Marks,Gender, Course) VALUES
(1, 'Alice', 'Johnson', 20, 85.50, 'Female', 'Computer Science'),
(2, 'Bob', 'Smith', 22, 90.00, 'Male', 'Mathematics'),
(3, 'Charlie', 'Brown', 21, 78.00, 'Male', 'Computer Science'),
(4, 'Diana', 'White', 23, 88.50, 'Female', 'Physics');

-- Display name of distinct courses
SELECT DISTINCT Course FROM STUDENT;

-- Display all the records of STUDENT table in descending order of age of students
SELECT * FROM STUDENT ORDER BY Age DESC;

/*Q.10 Consider the following table
STUDENT(R_No, First_ Name, Last_Name, Age, Marks, Gender, Course)
Write SQL Queries to Create table and insert some values as above given schema.
Display R_No, first name and last name of all girls.
Create a view using above query of “B”.*/

-- Create table STUDENT
CREATE TABLE STUDENT (
    R_No INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Age INT,
    Marks DECIMAL(5, 2),
    Gender VARCHAR(10),
    Course VARCHAR(100));

-- Insert some values into STUDENT table
INSERT INTO STUDENT (R_No, First_Name, Last_Name, Age, Marks,Gender, Course) VALUES
(1, 'Alice', 'Johnson', 20, 85.50, 'Female', 'Computer Science'),
(2, 'Bob', 'Smith', 22, 90.00, 'Male', 'Mathematics'),
(3, 'Charlie', 'Brown', 21, 78.00, 'Male', 'Computer Science'),
(4, 'Diana', 'White', 23, 88.50, 'Female', 'Physics');

-- Display R_No, first name and last name of all girls.

SELECT R_No, First_Name, Last_Name FROM STUDENT WHERE Gender = 'Female';

-- Create a view using above query of “B”
CREATE VIEW FemaleStudents SELECT R_No, First_Name, Last_Name FROM STUDENT WHERE Gender = 'Female';


/*Q.11 Consider the following table
STUDENT(R_No, First_ Name, Last_Name, Age, Marks, Gender, Course)
Write SQL Queries to Create table and insert some values as above given schema.
Write SQL Queries to delete column ‘Gender’.
Write SQL Queries to Create non updatable view using any query using above table.*/

-- Create table STUDENT
CREATE TABLE STUDENT (
    R_No INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Age INT,
    Marks DECIMAL(5,2),
    Gender VARCHAR(10),
    Course VARCHAR(100));

-- Insert some values into STUDENT table
INSERT INTO STUDENT (R_No, First_Name, Last_Name, Age, Marks,Gender, Course) VALUES
(1, 'Alice', 'Johnson', 20, 85.50, 'Female', 'Computer Science'),
(2, 'Bob', 'Smith', 22, 90.00, 'Male', 'Mathematics'),
(3, 'Charlie', 'Brown', 21, 78.00, 'Male', 'Computer Science'),
(4, 'Diana', 'White', 23, 88.50, 'Female', 'Physics');

-- Write SQL Queries to delete column
ALTER TABLE STUDENT
DROP COLUMN Gender;

-- Write SQL Queries to Create non updatable view using any query using above table.
CREATE VIEW StudentCourses SELECT R_No, First_Name, Last_Name, Course FROM STUDENT WITH CHECK OPTION;



