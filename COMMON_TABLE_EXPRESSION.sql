-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
CTEs
*/

WITH CTE_Employee AS
(SELECT EMP.firstName, EMP.lastName,EMP.gender, SAL.salary
,COUNT(EMP.gender) OVER (PARTITION BY EMP.gender) AS TotalGender
,AVG(SAL.salary) OVER (PARTITION BY EMP.gender) AS AvgSalary
FROM employeeDemographics AS EMP
JOIN employeeSalary AS SAL
     ON EMP.employeeID = SAL.employeeID
WHERE salary > '45000')
SELECT *
FROM CTE_Employee