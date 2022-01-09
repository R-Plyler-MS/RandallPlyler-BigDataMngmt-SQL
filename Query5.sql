SELECT city, MaxSal, Salary 
FROM dbo.mid_Pos
INNER JOIN dbo.mid_Emp
    ON dbo.mid_Pos.PosID = dbo.mid_Emp.PosID
INNER Join Dbo.mid_Loc
    ON dbo.mid_Emp.LocID = dbo.mid_Loc.LocID 
WHERE title LIKE 'Sales Manager'


