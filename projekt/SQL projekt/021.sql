select top 50 Person.Person.FirstName,Person.Person.LastName, Person.EmailAddress.EmailAddress
from Person.Person INNER JOIN Person.EmailAddress on Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID


