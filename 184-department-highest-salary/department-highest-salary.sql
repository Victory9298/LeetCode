# Write your MySQL query statement below
Select Department.name as Department, Employee.name as Employee, Employee.salary as Salary
from Employee 
left join Department on Employee.departmentId = Department.id
WHERE (Employee.departmentId, Employee.salary) In (Select departmentId, Max(salary) from Employee 
Group by Employee.departmentId)