SELECT (Fname + ' ' + Lname + ', ' + State + ', ' + Credentials + ', ' + Specialty) as Prescriber,
Gender,
State,
Credentials,
DrugName,
Specialty,
OpioidPrescriber,
TotalPrescriptions
from pd_Prescriber
Inner Join pd_Triple ON pd_Triple.PrescriberID = pd_Prescriber.PrescriberID
WHERE [State] = 'UT'
ORDER BY Prescriber