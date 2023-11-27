--String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower


--CREATE TABLE TeamErrors (
--StudentID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--INSERT INTO TeamErrors Values
--	('1001  ', 'Stephy', 'Curry')
--	,('  1002', 'Russ', 'Westbrook')
--	,('1005', 'KevIn', 'Durant - Fired')

--SELECT * FROM TeamErrors


----Trim, RTRIM, LTRIM

--SELECT StudentID, TRIM(StudentID) as Trimmed
--FROM TeamErrors

--SELECT StudentID, LTRIM(StudentID) as Trimmed
--FROM TeamErrors

--SELECT StudentID, RTRIM(StudentID) as Trimmed
--FROM TeamErrors

----Replace


--SELECT LastName, REPLACE(LastName, '- Fired', '') as "Fixe Last Name" 
--FROM TeamErrors


----Change Steph's name
--SELECT * FROM TeamErrors
--UPDATE TeamErrors
--SET FirstName = 'Stephn'
--WHERE FirstName = 'Stephy' AND LastName = 'Curry'
--SELECT * FROM TeamErrors

----Substring
----Fuzzy Matching

--SELECT SUBSTRING(err.FirstName, 1, 5), SUBSTRING(dem.FirstName, 1, 5), SUBSTRING(err.LastName, 1, 3), SUBSTRING(dem.LastName, 1, 3)
--FROM TeamErrors AS err
--JOIN TeamDemographics AS dem
--	ON SUBSTRING(err.FirstName, 1, 5) = SUBSTRING(dem.FirstName, 1, 5)
--	AND SUBSTRING(err.LastName, 1, 3) = SUBSTRING(dem.LastName, 1, 3)

------ Using UPPER and lower

--SELECT FirstName, LOWER(FirstName) AS LowerCase
--FROM TeamErrors

--SELECT FirstName, UPPER (FirstName) AS UpperCase
--FROM TeamErrors

--Select firstname, LOWER(firstname)
--from EmployeeErrors

--Select Firstname, UPPER(FirstName)
--from EmployeeErrors

--SELECT * FROM TeamDemographics
--SELECT COUNT(FirstName) AS 'CSEs'
--FROM TeamDemographics 
--WHERE Department = 'CSE'