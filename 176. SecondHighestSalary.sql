SELECT max(Salary) AS "SecondHighestSalary"
FROM
    Employee
WHERE Salary != (SELECT max(salary) FROM employee)