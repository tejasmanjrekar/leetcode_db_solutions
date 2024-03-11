select department.name as Department,employee.name as Employee,Employee.Salary as Salary 
from department,employee 
where employee.departmentId=department.id 
and 
(Employee.departmentId,salary)
in 
    (Select employee.departmentId,max(salary)
    from Employee 
    Group by employee.departmentId);
