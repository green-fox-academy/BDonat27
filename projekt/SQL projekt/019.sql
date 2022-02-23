select FirstName,LastName, COUNT(FirstName+LastName) from Person.Person group by FirstName, LastName order by 3 desc


