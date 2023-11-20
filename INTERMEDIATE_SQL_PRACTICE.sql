--INNER AND OUTER JOINS
--INNER JOIN =>  A n B
--LEFT OUTER JOIN => A
--RIGHT OUTER JOIN => B
--FULL OUTER JOIN => A u B

--SELECT * FROM "SQL COURSE".dbo.TeamSalary


--SELECT * FROM "SQL COURSE".dbo.TeamDemographics
--INNER JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID
 --Only Joins what's common and overlapping

--SELECT * FROM "SQL COURSE".dbo.TeamDemographics
--FULL OUTER JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID

--SELECT * FROM "SQL COURSE".dbo.TeamDemographics
--LEFT OUTER JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID

--SELECT * FROM "SQL COURSE".dbo.TeamDemographics
--RIGHT OUTER JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID

--SELECT TeamSalary.StudentID, FirstName, LastName
--FROM "SQL COURSE".dbo.TeamDemographics
--FULL OUTER JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID

--SELECT *
--FROM "SQL COURSE".dbo.TeamDemographics
--FULL OUTER JOIN "SQL COURSE".dbo.TeamSalary
--	ON TeamDemographics.StudentID = TeamSalary.StudentID


SELECT TeamDemographics.StudentID, FirstName, LastName, Salary, JobTitle
FROM "SQL COURSE".dbo.TeamDemographics
FULL OUTER JOIN "SQL COURSE".dbo.TeamSalary
	ON TeamDemographics.StudentID = TeamSalary.StudentID
WHERE JobTitle LIKE '%P%'




