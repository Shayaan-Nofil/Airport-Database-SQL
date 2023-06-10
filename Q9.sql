Select PNAME, FLIES.Lic_num, count(*) as Authorized_Planes from FLIES, PILOT, PPERSON 
where FLIES.Lic_num = PILOT.Lic_num and PILOT.SSN = PPERSON.SSN
group by FLIES.Lic_num, PNAME
