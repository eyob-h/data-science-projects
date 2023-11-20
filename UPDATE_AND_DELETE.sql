
SELECT *

FROM "SQL COURSE".dbo.TeamDemographics

UPDATE "SQL COURSE".dbo.TeamDemographics
SET StudentID = 1014
WHERE FirstName = 'Holly' AND LastName = 'James'


DELETE FROM "SQL COURSE".dbo.TeamDemographics
WHERE StudentID = 1015
