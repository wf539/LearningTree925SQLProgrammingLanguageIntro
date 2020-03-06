SELECT ProductID    AS ID
      ,ProductName  AS Name
      ,UnitsInStock AS InStock
      ,UnitsOnOrder AS OnOrder
      ,UnitsInStock-UnitsOnOrder AS Available
FROM   Products;