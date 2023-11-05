-- Active: 1699040030177@@127.0.0.1@3306@ostad_assignment

-- Task 2:

SELECT
    OI.`OrderID`,
    P.`ProductName` AS `Product Name`,
    OI.`Quantity`,
    OI.`Quantity` * OI.`UnitPrice` AS `Total Amount`
FROM
    order_items AS OI
    JOIN products AS P ON OI.`ProductID` = P.`ProductID`
ORDER BY
    OI.`OrderID` ASC;
