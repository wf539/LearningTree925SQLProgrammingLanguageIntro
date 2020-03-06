SELECT BirthDate
      ,EXTRACT(YEAR FROM BirthDate) AS BirthYear
      ,EXTRACT(MONTH FROM BirthDate) AS BirthMonth
      ,EXTRACT(DAY FROM BirthDate) AS BirthDay
FROM   Employees;

--SQL Server does not have the EXTRACT function
SELECT BirthDate
      ,YEAR(BirthDate) AS BirthYear
      ,MONTH(BirthDate) AS BirthMonth
      ,DAY(BirthDate) AS BirthDay
FROM   Employees;
