Select SSN, City, Perf
from mid_Emp
Inner Join mid_Loc on mid_Emp.LocID = mid_Loc.LocID
where ssn LIKE '7%'
and (perf = 'Good' or perf = 'Fair')
Order by SSN Desc
