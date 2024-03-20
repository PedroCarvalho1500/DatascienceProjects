-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
Partition By
*/


--SELECT * FROM employeeDemographics


-- SELECT * FROM employeeSalary


/* PARTITION BY ALLOWS US TO ISOLATE ONE COLUMN AND CALCULATE OUR INFORMATION
THERE*/
SELECT firstName, lastName, gender, salary
,COUNT (gender) OVER (PARTITION BY gender) AS TotalGender
FROM employeeDemographics as dem
JOIN employeeSalary as sal
     ON dem.employeeID = sal.employeeID