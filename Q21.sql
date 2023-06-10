Select AIRPLANE.Reg#, PLANE_TYPE.model_name , COUNT(PSERVICE.Reg#) as Total_Services
From PLANE_TYPE, AIRPLANE LEFT JOIN PSERVICE
ON AIRPLANE.Reg# = PSERVICE.Reg#
where PLANE_TYPE.model_num = AIRPLANE.model_num
Group By AIRPLANE.Reg#, PLANE_TYPE.model_name
