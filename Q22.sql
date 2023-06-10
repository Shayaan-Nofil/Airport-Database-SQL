select shift_worked, avg(salary) as average_salary
from employee
group by shift_worked
