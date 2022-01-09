Select Title, State, Perf, Gender from mid_Emp
Left join mid_Loc on mid_Loc.LocID = mid_Emp.LocID
Right Join mid_Pos on mid_Emp.PosID = mid_Pos.PosID
Where Bonus IS NULL