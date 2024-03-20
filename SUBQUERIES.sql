--database: /home/pedrossd/Desktop/ESTUDOS_QA/DATA_SCIENCE_PYTHON/SQLTutorial.bd

/*
Subqueries (in the Select, From, and Where Statement)

*/

SELECT employeeSalary.employeeID, employeeSalary.salary, (SELECT AVG(salary) FROM employeeSalary AS AllAvgSalary)
FROM employeeSalary