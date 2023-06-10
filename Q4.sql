SELECT corporation.Cname, corporation.Adress
from corporation join owns on corporation.Cname = owns.Cname inner join airplane on owns.reg# = airplane.reg#
join plane_type on airplane.model_num = plane_type.model_num
where plane_type.capacity > 200;
