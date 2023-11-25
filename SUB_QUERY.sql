
--Select *
--From "SQL COURSE".dbo.TeamSalary

-- Subquery in Select
SELECT StudentID, JobTitle, (SELECT AVG(Salary) FROM "SQL COURSE".dbo.TeamSalary) AS "AVERAGE_SALARY"
FROM "SQL COURSE".dbo.TeamSalary

-- With Partition By
SELECT StudentID, JobTitle, AVG(Salary) OVER() AS "AVERAGE_SALARY"
FROM "SQL COURSE".dbo.TeamSalary

--GROUP BY WON'T WORK HERE

-- In FROM statement
SELECT A.StudentID, AVERAGE_SALARY
FROM (SELECT StudentID, JobTitle, AVG(Salary) OVER() AS "AVERAGE_SALARY"
	FROM "SQL COURSE".dbo.TeamSalary) AS A

-- In WHERE Statement
SELECT StudentID, JobTitle, Salary
FROM "SQL COURSE".dbo.TeamSalary
WHERE StudentID IN(
	SELECT StudentID
	FROM "SQL COURSE".dbo.TeamDemographics
	WHERE FirstName LIKE '%e%')
