SELECT c.RoomID
      ,c.Name
      ,r.StartTime
      ,r.EndTime
      ,e.LastName
FROM   ConferenceRooms c
LEFT JOIN   
       Reservations r
ON     c.RoomID = r.RoomId
LEFT JOIN 
       Employees e
ON     r.EmployeeID = e.EmployeeID 
ORDER BY C.RoomID
        ,r.StartTime;