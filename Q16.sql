select pname
from pperson p join employee e on p.ssn = e.ssn join pservice on e.ssn = pservice.ssn join airplane on pservice.reg# = airplane.reg# join owns on airplane.reg# = owns.reg#
where owns.cname = 'ABC Ltd'
group by pname
order by sum(pservice.shours) desc
