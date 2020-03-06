SELECT c.RoomID
      ,c.Name
      ,r.StartTime
      ,r.EndTime
FROM   ConferenceRooms c
JOIN   Reservations r
ON     c.RoomID = r.RoomId
ORDER BY C.RoomID
        ,r.StartTime;