-- Query 1 (WHERE & JOIN)
SELECT
  Customers.Name,
  Customers.VillageBlock,
  Deliveries.Status
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Deliveries ON Orders.OrderID = Deliveries.OrderID
WHERE Deliveries.Status IN ('Pending', 'Out for Delivery');

-- Query 2 (Multiple JOINs)
SELECT
  Orders.OrderDate,
  Customers.Name,
  Products.Name AS BreadType,
  OrderDetails.Quantity
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Orders.OrderDate DESC;

-- Query 3 (GROUP BY, Aggregate, JOIN & Math)
SELECT
  Products.Name AS BreadName,
  SUM(OrderDetails.Quantity * Products.Price) AS TotalRevenue
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.Name
ORDER BY TotalRevenue DESC;

-- Query 4 (JOIN, GROUP BY, Aggregate, & ORDER BY)
SELECT
  Products.Name AS BreadName,
  AVG(OrderDetails.Quantity) AS AverageQuantityPerOrder
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.Name
ORDER BY AverageQuantityPerOrder DESC;

-- Query 5 (GROUP BY, Aggregate & JOIN)
SELECT
  Customers.Name AS VIP_Customer,
  SUM(OrderDetails.Quantity) AS TotalBreadsBought
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Customers.Name
ORDER BY TotalBreadsBought DESC;
