SELECT c.RoomID, c.Name, r.StartTime
FROM  ConferenceRooms c
LEFT OUTER JOIN
      Reservations r
ON    r.RoomID = c.RoomID;