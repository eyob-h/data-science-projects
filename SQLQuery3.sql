USE [SQL COURSE]
GO
/****** Object:  StoredProcedure [dbo].[TEMPTEAM]    Script Date: 11/25/2023 7:34:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TEMPTEAM]
@JobTite navchar(100)
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
where JobTitle = @JobTite
GROUP BY JobTitle

SELECT *
FROM #TTeam