DELETE FROM ConferenceRooms
WHERE  RoomID = 400;

-- PostgreSQL and SQL Server commits automatically if there is no BEGIN TRANSACTION
-- Oracle needs to COMMIT;

SELECT * FROM ConferenceRooms;
