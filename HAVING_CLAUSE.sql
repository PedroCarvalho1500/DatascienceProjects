-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
HAVING CLAUSE
*/


SELECT employeeSalary.jobTitle, COUNT(employeeSalary.jobTitle)
FROM employeeDemographics
RIGHT JOIN employeeSalary
    ON employeeDemographics.employeeID = employeeSalary.employeeID
GROUP BY employeeSalary.jobTitle
HAVING COUNT(jobTitle) > 1

-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
HAVING CLAUSE
*/


SELECT employeeSalary.jobTitle, AVG(employeeSalary.salary)
FROM employeeDemographics
RIGHT JOIN employeeSalary
    ON employeeDemographics.employeeID = employeeSalary.employeeID
GROUP BY employeeSalary.jobTitle
HAVING AVG(salary) > 45000
ORDER BY AVG(salary)