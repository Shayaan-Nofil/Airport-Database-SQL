Select 
CASE 
	WHEN O_Type = 'PERSON' THEN (select PName + ', ' + Phone from PPERSON where PPERSON.SSN = OWNS.SSN)
	ELSE (select CName + ', ' + Phone from CORPORATION where CORPORATION.CName = OWNS.CName)
END Buyers_This_Month
from OWNS where PDate between DATEADD(MONTH, -1, GETDATE()) AND GETDATE()
