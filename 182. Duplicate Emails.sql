select Email from Person
Group by Email
Having Count(*) > 1 ;