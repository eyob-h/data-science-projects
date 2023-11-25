CREATE PROCEDURE TEST
AS
SELECT * 
FROM "SQL COURSE".dbo.TeamDemographics

EXEC TEST

CREATE PROCEDURE TEMPTEAM
AS
CREATE TABLE #TTeam(
JobTitle varchar(50),
MemberPerJob int,
AvgSalary int)

INSERT INTO #TTeam
SELECT JobTitle, COUNT(JobTitle), AVG(Salary)
FROM TeamDemographics AS DEMO
JOIN TeamSalary AS SAL
	ON DEMO.StudentID = SAL.StudentID
GROUP BY JobTitle

SELECT *
FROM #TTeam

EXEC TEMPTEAM