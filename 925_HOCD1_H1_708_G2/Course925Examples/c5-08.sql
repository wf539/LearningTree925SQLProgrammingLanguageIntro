SELECT c.RoomID, c.Name, r.StartTime
FROM  ConferenceRooms c
JOIN  Reservations r
ON    r.RoomID = c.RoomID;

