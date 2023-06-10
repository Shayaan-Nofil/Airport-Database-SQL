Select top 5 ssn as EMPLOYEE, sum(pservice.Shours) as Total_Hours_Worked
from pservice 
group by ssn 
order by sum(pservice.shours) desc
