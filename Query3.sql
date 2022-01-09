select LName, City, Perf
from mid_Emp
Inner JOIN mid_Loc on mid_Emp.LocID = mid_Loc.LocID

WHERE (State = 'CA' or State = 'FL' or State = 'WA')

and (mid_Emp.Perf = 'Good' or mid_Emp.Perf = 'Poor')



