select FName, LName, HDate, Title, Salary
from mid_Emp
right join mid_Pos on mid_Emp.PosID = mid_Pos.PosID
where FName like 'J%' and Gender = 'M'
