SELECT RoomID, Name 
FROM   ConferenceRooms cr
WHERE  NOT EXISTS (SELECT 'x' FROM Reservations r
                   WHERE r.RoomID = cr.RoomID);
