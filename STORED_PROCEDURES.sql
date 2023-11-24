--CREATE PROCEDURE SelCSE @Department nvarchar(50)
--AS
--SELECT * FROM TeamDemographics WHERE Department = @Department
--GO

--EXEC SelCSE @Department = 'CSE'

--Stored procedures with multiple parameters

--CREATE PROCEDURE JandN @Department nvarchar(50), @NAME nvarchar(50)
--AS
--SELECT * FROM TeamDemographics WHERE Department = @Department AND TeamDemographics.FirstName = @NAME
--GO

EXEC JandN @Department = 'CSE', @NAME = 'Steph'
