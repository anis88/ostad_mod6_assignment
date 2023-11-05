-- Active: 1699040030177@@127.0.0.1@3306@ostad_assignment

-- Task 1:
SELECT
    C.`CustomerID`,
    C.`CustomerName`,
    C.`Email`,
    C.`Location`,
    COUNT(O.`OrderID`) AS `Total Orders`
FROM
    customers AS C
LEFT JOIN
    orders AS O ON C.`CustomerID` = O.`CustomerID`
GROUP BY
    C.`CustomerID`, C.`CustomerName`, C.`Email`, C.`Location`
ORDER BY
    `Total Orders` DESC;
