SELECT FirstName, LastName, JobTitle, Salary, COUNT(JobTitle) OVER (PARTITION BY JobTitle) AS "Total Job Title"
FROM TeamDemographics AS DEM
JOIN TeamSalary AS SAL
ON DEM.StudentID = SAL.StudentID
