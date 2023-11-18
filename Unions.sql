--Table 1 Insert:
--Insert into TeamDemographics VALUES
--(1013, 'Ryan', 'Johnson', 'CSE'),
--(NULL, 'Holly', 'James', NULL),
--(1015, 'Darryl', 'Andrew', NULL)

--Table 3 Query:
--Create Table AllStarTeamDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Department varchar(50)
--)

----Table 3 Insert:
--Insert into AllStarTeamDemographics VALUES
--(1013, 'Lloyd', 'Philbin', NULL),
--(1050, 'Derrik', 'Anderson', 'Computer Science'),
--(1051, 'Bob', 'Hasagawa', 'CSE'),
--(1052, 'Mal', 'Johnson', 'Architecture')


SELECT *
--Data type have to be the same!
FROM "SQL COURSE".dbo.TeamDemographics

UNION

SELECT *
FROM "SQL COURSE".dbo.AllStarTeamDemographics
