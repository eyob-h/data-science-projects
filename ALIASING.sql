--SELECT FirstName AS [Mango Juice], LastName AS "What's Up"

--FROM "SQL COURSE".dbo.TeamDemographics

--SELECT FirstName + '  ' + LastName AS FullName
--FROM "SQL COURSE".dbo.TeamDemographics

--SELECT AVG (Salary) AS "Average Salary"
--FROM "SQL COURSE".dbo.TeamSalary

SELECT Demo.FirstName, Sal.Salary
FROM [TeamDemographics] As Demo
JOIN [TeamSalary] As Sal
	ON Demo.StudentID = Sal.StudentID
