SELECT 'Concat to an empty string'||'' AS Concat_empty -- PostgreSQL
      ,'Concat to a NULL string'||NULL AS Concat_null;

SELECT 'Concat to an empty string'+'' AS Concat_empty  -- SQL Server
      ,'Concat to a NULL string'+NULL AS Concat_null;

SELECT 'Concat to an empty string'||'' AS Concat_empty -- Oracle
      ,'Concat to a NULL string'||NULL AS Concat_null
FROM   DUAL;
