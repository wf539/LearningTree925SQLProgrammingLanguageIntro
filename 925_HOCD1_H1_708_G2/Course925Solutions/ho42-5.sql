SELECT CompanyName
      ,Country
FROM   Suppliers
WHERE  Country NOT IN ('USA','UK','Canada')
ORDER BY Country
        ,CompanyName;