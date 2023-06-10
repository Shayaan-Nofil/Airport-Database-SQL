select pperson.pname as Pilot_name, count(flies.lic_num) as Allowed_to_fly
from pperson join pilot on pperson.ssn = pilot.ssn join flies on flies.lic_num = pilot.lic_num
group by pname
