select ssn, firstname, lastname
from gs_Employee
where ssn LIKE '22%'

select locationcity, gs_Employee.locationID, AVG(salary) as average, COUNT(SSN) as count
from gs_Employee
inner join gs_location on gs_Employee.locationID = gs_Location.locationID
group by locationcity, gs_Employee.locationID


select locationcity, gs_Employee.locationID, AVG(salary) as average, COUNT(SSN) as count
from gs_Employee
inner join gs_location on gs_Employee.locationID = gs_Location.locationID
group by locationcity, gs_Employee.locationID

select firstname, lastname, performance, locationcity
from gs_Employee
inner join gs_Location on gs_Employee.locationID = gs_location.locationID
where (performance = 'Average'
    or performance = 'Poor')
    and locationcity = 'Chicago'


Select lastname, salary, performance, locationcity, positiontitle
from gs_Employee
inner join gs_Location on gs_Employee.locationID = gs_Location.locationID
inner join gs_Position on gs_Position.positionID = gs_Employee.positionID
WHERE performance IS NOT NULL
and positiontitle like '%manager'

