-- Query 1 (WHERE)
SELECT * FROM Deliveries
WHERE Status = 'Pending';

-- Query 2 (JOIN)
SELECT Orders.OrderDate, Customers.Name, Customers.VillageBlock
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-- Query 3 (GROUP BY & Aggregate)
SELECT ProductID, SUM(Quantity) as TotalSold
FROM OrderDetails
GROUP BY ProductID;

-- Query 4 (Aggregate)
SELECT AVG(Price) as AverageBreadPrice
FROM Products;

-- Query 5 (JOIN & WHERE)
SELECT Customers.Name, Deliveries.Status
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Deliveries ON Orders.OrderID = Deliveries.OrderID
WHERE Deliveries.Status = 'Delivered';
