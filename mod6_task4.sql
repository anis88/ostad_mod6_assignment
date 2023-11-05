-- Active: 1699040030177@@127.0.0.1@3306@ostad_assignment

-- Task 4:

SELECT c.`CustomerName` AS `CustomerName`, SUM(oi.`Quantity` * oi.`UnitPrice`) AS `Total Purchase Amount`
FROM customers c
JOIN orders o ON c.`CustomerID` = o.`CustomerID`
JOIN order_items oi ON o.`OrderID` = oi.`OrderID`
GROUP BY c.`CustomerName`
ORDER BY `Total Purchase Amount` DESC
LIMIT 5;
