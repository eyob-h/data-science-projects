DROP TABLE IF EXISTS #Temp_Team --to avoid error

CREATE TABLE #Temp_Team(
JobTitle varchar(50),
MemberPerJob int,
AvgSalary int)

INSERT INTO #Temp_Team
SELECT JobTitle, COUNT(JobTitle), AVG(Salary)
FROM TeamDemographics AS DEMO
JOIN TeamSalary AS SAL
	ON DEMO.StudentID = SAL.StudentID
GROUP BY JobTitle

SELECT *
FROM #Temp_Team