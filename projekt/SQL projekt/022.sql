select top 50 Person.Person.FirstName,Person.Person.LastName, 
from Person.Person INNER JOIN Person.EmailAddress on Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID


