-- database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

-- Use the ▷ button in the top right corner to run the entire file.
/*
CASE STATEMENT
*/



SELECT firstName, lastName, age,
CASE 
    WHEN age = 38 THEN 'Stanley'
    WHEN age > 30 THEN 'Old'
    ELSE 'Baby'
END

FROM employeeDemographics
WHERE age is NOT NULL
ORDER BY age



SELECT employeeDemographics.firstName, employeeDemographics.lastName, employeeSalary.jobTitle, employeeSalary.salary,
CASE
    WHEN jobTitle = 'Salesman' THEN salary + (salary*0.10)
    WHEN jobTitle = 'Accountant' THEN salary + (salary * 0.05)
    WHEN jobTitle = 'HR' THEN salary+ (salary * 0.00001)
    ELSE salary + (salary * 0.03) 
END AS SalaryAfterRaise
FROM employeeDemographics
JOIN employeeSalary
     ON employeeDemographics.employeeID = employeeSalary.employeeID