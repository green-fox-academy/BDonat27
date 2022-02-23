select top 50 Person.Person.FirstName,Person.Person.LastName, right(EmailAddress, len(EmailAddress) - CHARINDEX('@',EmailAddress) ) as domainname
from Person.Person INNER JOIN Person.EmailAddress on Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID