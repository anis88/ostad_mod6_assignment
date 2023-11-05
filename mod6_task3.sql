-- Active: 1699040030177@@127.0.0.1@3306@ostad_assignment

-- Task 3:

SELECT c.`CategoryName` AS `Category Name`, SUM(oi.`Quantity` * oi.`UnitPrice`) AS `UnitPrice`
FROM Categories c
JOIN Products p ON c.`CategoryID` = p.`CategoryID`
JOIN order_items oi ON p.`ProductID` = oi.`ProductID`
GROUP BY c.`CategoryName`
ORDER BY `UnitPrice` DESC;
