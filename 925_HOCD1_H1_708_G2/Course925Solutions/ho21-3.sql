ALTER TABLE ConferenceRooms
ALTER COLUMN Name TYPE VARCHAR(30);

-- SQL Server does not use the keyword TYPE
-- NOT NULL must be included to retain the NOT NULL setting
ALTER TABLE ConferenceRooms
ALTER COLUMN Name VARCHAR(30) NOT NULL;

-- In Oracle the keyword is MODIFY, not ALTER COLUMN
ALTER TABLE ConferenceRooms
MODIFY Name VARCHAR(30);