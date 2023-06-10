--A query to check how many more planes can each hangar still store
select hangar_num, Capacity-(select count(*) from AIRPLANE where HANGAR.hangar_num = AIRPLANE.hangar_num) as Capacity_Left
from HANGAR

--A query to get the names and license numbers of pilots with no restrictions
select PName as Pilot, Lic_num as License from PILOT, PPERSON where PILOT.SSN = PPERSON.SSN and Restr = 'None'

--A query to find the name of the plane type with most number of planes
select top 1 model_name as Model, count(PLANE_TYPE.model_num) as Planes from AIRPLANE, PLANE_TYPE
where AIRPLANE.model_num = PLANE_TYPE.model_num
group by model_name
order by Planes desc

--A query to find skilled enough employees who could work on more than 2 types of planes
select PName, PPERSON.SSN from PPERSON, WORKS_ON 
where PPERSON.SSN = WORKS_ON.SSN
group by PName, PPERSON.SSN
having count(Distinct model_num) > 2
