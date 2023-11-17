--CREATE TABLE TeamDemographics
--(
--StudentID int,
--FirstName varchar(50),
--LastName varchar(50),
--Department varchar(50),
--)

--Create Table StudentSalary 
--(StudentID int, 
--JobTitle varchar(50), 
--Salary int
--)

--INSERT INTO TeamDemographics VALUES
--(1001, 'Jeremy', 'Lin', 'CSE'),
--(1002, 'Nelson', 'Samuel', 'CSE'),
--(1003, 'Steph', 'Curry', 'Architecture'),
--(1004, 'Russell', 'Westbrook', 'CSE'),
--(1005, 'Isaiah', 'Thomas', 'Computer Science'),
--(1006, 'Kevin', 'Durant', 'CSE'),
--(1007, 'Chris', 'Paul', 'CSE')

--INSERT INTO StudentSalary VALUES
--(1001, 'PF', 450000),
--(1002, 'PG', 360000),
--(1003, 'C', 630000),
--(1004, 'SG', 470000),
--(1005, 'PF', 500000),
--(1006, 'SG', 650000),
--(1007, 'PF', 410000),
--(1008, 'SF', 480000),
--(1009, 'PG', 420000)

--SELECT * FROM TeamDemographics
--WHERE FirstName = 'Kevin';
--WHERE FirstName <> 'Steph';

--SELECT * FROM TeamDemographics
----WHERE FirstName LIKE '%n'
----WHERE FirstName LIKE 'k%i%'
----WHERE FirstName is NOT NULL
--WHERE FirstName IN ('Russell', 'Chris')

--Group By and Order By
--SELECT DISTINCT(JobTitle) 
--FROM TeamSalary

--SELECT Salary, JobTitle ,  COUNT(JobTitle)
--FROM TeamSalary
--GROUP BY Salary, JobTitle

--SELECT Salary , COUNT(Salary)
--FROM TeamSalary
--WHERE JobTitle LIKE 'PG'
--GROUP BY Salary 
--ORDER BY Salary DESC


--SELECT JobTitle , COUNT(Salary) AS CountSalary
--FROM TeamSalary
--GROUP BY JobTitle 
--ORDER BY JobTitle ASC

--SELECT * FROM TeamSalary
--ORDER BY JobTitle DESC, Salary DESC

SELECT COUNT(DISTINCT(JobTitle)) 
FROM TeamSalary

--NOT AND NULL
SELECT * FROM TeamDemographics
WHERE NOT FirstName IS NULL

--INSERT INTO
--INSERT INTO TeamDemographics(
--StudentID,
--FirstName,
--LastName,
--Department)
--VALUES (
--1008,
--'Dikembe',
--'Mutombo',
--'CSE')