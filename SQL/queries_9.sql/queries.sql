-- Use Database
USE HotelManagementSystem;
GO

-- WHERE Clause
SELECT *
FROM Rooms
WHERE Status='Available';

-- ORDER BY Clause
SELECT *
FROM Customers
ORDER BY FullName ASC;

-- GROUP BY Clause
SELECT ReservationStatus, COUNT(*) AS TotalReservations
FROM Reservations
GROUP BY ReservationStatus;

-- HAVING Clause
SELECT ReservationStatus, COUNT(*) AS TotalReservations
FROM Reservations
GROUP BY ReservationStatus
HAVING COUNT(*) > 0;

-- INNER JOIN
SELECT c.FullName, r.RoomNumber
FROM Customers c
INNER JOIN Reservations rs
ON c.CustomerID = rs.CustomerID
INNER JOIN Rooms r
ON rs.RoomID = r.RoomID;

-- LEFT JOIN
SELECT c.FullName, rs.ReservationID
FROM Customers c
LEFT JOIN Reservations rs
ON c.CustomerID = rs.CustomerID;

-- RIGHT JOIN
SELECT c.FullName, rs.ReservationID
FROM Customers c
RIGHT JOIN Reservations rs
ON c.CustomerID = rs.CustomerID;

-- FULL JOIN
SELECT c.FullName, rs.ReservationID
FROM Customers c
FULL JOIN Reservations rs
ON c.CustomerID = rs.CustomerID;

-- Scalar Subquery
SELECT FullName
FROM Customers
WHERE CustomerID =
(
    SELECT MAX(CustomerID)
    FROM Customers
);

-- Correlated Subquery
SELECT FullName
FROM Customers c
WHERE EXISTS
(
    SELECT 1
    FROM Reservations r
    WHERE r.CustomerID = c.CustomerID
);

-- Nested Subquery
SELECT *
FROM Rooms
WHERE RoomID IN
(
    SELECT RoomID
    FROM Reservations
    WHERE CustomerID IN
    (
        SELECT CustomerID
        FROM Customers
        WHERE FullName='John Smith'
    )
);

-- Scalar Function
SELECT dbo.fn_TotalRevenue() AS TotalRevenue;

-- Table Valued Function
SELECT * FROM dbo.fn_AvailableRooms();

-- Simple View
SELECT * FROM SimpleCustomerView;

-- Join Based View
SELECT * FROM CustomerReservationView;

-- Aggregate View
SELECT * FROM RevenueView;

-- Trigger Execution Demo
INSERT INTO Reservations
(
    CustomerID,
    RoomID,
    CheckInDate,
    CheckOutDate,
    ReservationStatus
)
VALUES
(2,1,'2026-05-20','2026-05-25','Confirmed');