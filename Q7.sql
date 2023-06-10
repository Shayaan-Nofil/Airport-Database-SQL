Select model_name, PSERVICE.Reg# from AIRPLANE, PSERVICE, PLANE_TYPE 
where PSERVICE.Reg# = AIRPLANE.Reg# and AIRPLANE.model_num = PLANE_TYPE.model_num and SDate between DATEADD(WEEK, -1, GETDATE()) AND GETDATE()
group by PSERVICE.Reg#, model_name
