select top 1 hangar.capacity, hlocation, capacity - (select count(*) from airplane where airplane.hangar_num = hangar.hangar_num) as available_space
from hangar 
where capacity - (select count(*) from airplane where airplane.hangar_num = hangar.hangar_num) > 0
order by available_space desc
