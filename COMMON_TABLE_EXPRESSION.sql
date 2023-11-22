
WITH CTE_Team as
(
SELECT FirstName, LastName, JobTitle, Salary,
COUNT(JobTitle) OVER (PARTITION BY JobTitle) AS TotalJob,
AVG(Salary) OVER (PARTITION BY JobTitle) AS AVGSalary

FROM TeamDemographics AS DEMO
JOIN TeamSalary AS SAL
	ON DEMO.StudentID = SAL.StudentID
WHERE Salary > '200000'
)
SELECT *
FROM CTE_Team