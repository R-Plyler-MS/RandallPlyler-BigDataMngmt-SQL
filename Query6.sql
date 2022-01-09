Select LName, HDate, Salary, Title 
From mid_Emp
Left Join mid_Pos on mid_Emp.PosID = mid_Pos.PosID
Where (HDate > '1995')
and HDate > '1999'
and (Salary > '18000' and Salary < '25000')
