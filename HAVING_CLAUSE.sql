--SELECT JobTitle, COUNT(JobTitle)

--FROM "SQL COURSE".dbo.TeamDemographics
--JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID

----WHERE COUNT(JobTitle) > 1
--GROUP BY JobTitle
--HAVING COUNT(JobTitle)>1

SELECT FirstName,  AVG(Salary)

FROM "SQL COURSE".dbo.TeamDemographics
JOIN "SQL COURSE".dbo.TeamSalary
	ON TeamDemographics.StudentID = TeamSalary.StudentID

--WHERE COUNT(JobTitle) > 1
GROUP BY FirstName
HAVING AVG(SALARY) > 500000
ORDER BY AVG(Salary)