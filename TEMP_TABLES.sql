-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
Temp Tables
*/

DROP TABLE IF EXISTS temp_Employee

CREATE TABLE temp_Employee (
     employeeID INT,
     jobTitle VARCHAR(100),
     salary INT
)

INSERT INTO temp_Employee VALUES (
     '1001', 'HR', '45000'
)

INSERT INTO temp_Employee
SELECT *
FROM employeeSalary


DROP TABLE IF EXISTS temp_Employee2

CREATE TABLE temp_Employee_2 (
     jobTitle VARCHAR(50),
     employeesPerJob INT,
     avgAge INT,
     avgSalary INT
)

INSERT INTO temp_Employee_2
SELECT jobTitle, COUNT(jobTitle), AVG(age), AVG(salary)
FROM employeeDemographics
JOIN employeeSalary 
     ON employeeDemographics.employeeID = employeeSalary.employeeID
GROUP BY jobTitle