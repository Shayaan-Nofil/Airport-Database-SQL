select model_name, avg(pservice.shours) as avghours_worked
from plane_type p join airplane a on p.model_num = a.model_num join pservice on pservice.reg# = a.reg#
group by model_name
