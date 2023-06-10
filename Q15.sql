select PName as Pilots, PILOT.Lic_num as License from PPERSON, PILOT, FLIES where PPERSON.SSN = PILOT.SSN and PILOT.Lic_num = FLIES.Lic_num 
and model_num in (select AIRPLANE.model_num from PSERVICE, PLANE_TYPE, AIRPLANE 
where PSERVICE.Reg# = AIRPLANE.Reg# and AIRPLANE.model_num = PLANE_TYPE.model_num and SDate between DATEADD(DAY, -1, GETDATE()) AND GETDATE())
group by PName, PILOT.Lic_num
