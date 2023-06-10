Select model_name, AIRPLANE.Reg# from AIRPLANE, PLANE_TYPE, OWNS
where AIRPLANE.model_num = PLANE_TYPE.model_num and OWNS.O_Type = 'Person' and OWNS.Reg# = AIRPLANE.Reg#
and AIRPLANE.Reg# IN (Select Reg# from AIRPLANE 
where Reg# NOT IN (select Reg# from PSERVICE, EMPLOYEE where PSERVICE.SSN = EMPLOYEE.SSN and EMPLOYEE.Shift_worked = 'Day'))
