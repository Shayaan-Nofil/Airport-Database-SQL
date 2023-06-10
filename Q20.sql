select model_name, count(*) as numofplanes
from plane_type join airplane on plane_type.model_num = airplane.model_num
group by model_name
