SELECT FirstName, LastName, JobTitle, Salary
,
CASE
	WHEN JobTitle = 'PG' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'PF' THEN Salary + (Salary * .04)
	ELSE Salary + (Salary * .02)

END
AS SalaryAfterRaise

FROM "SQL COURSE".dbo.TeamDemographics
JOIN "SQL COURSE".dbo.TeamSalary
	ON TeamDemographics.StudentID = TeamSalary.StudentID
