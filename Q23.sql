SELECT 
  CASE 
    WHEN O_Type = 'PERSON' THEN (select PName from PPERSON where PPERSON.SSN = OWNS.SSN)
    ELSE CName
  END AS Plane_Owner, count(*)as planes_owned, O_Type
FROM OWNS
group by O_Type, SSN, CName
order by planes_owned
