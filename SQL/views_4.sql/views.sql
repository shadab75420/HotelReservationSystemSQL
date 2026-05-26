-- Use Database
USE HotelManagementSystem;
GO

-- Create Join Based View
GO
CREATE VIEW CustomerReservationView AS
SELECT 
    c.FullName,
    r.RoomNumber,
    rs.CheckInDate,
    rs.CheckOutDate
FROM Customers c
JOIN Reservations rs
ON c.CustomerID = rs.CustomerID
JOIN Rooms r
ON rs.RoomID = r.RoomID;
GO

-- Create Simple View
CREATE VIEW SimpleCustomerView AS
SELECT FullName, Phone
FROM Customers;
GO

-- Create Aggregate View
CREATE VIEW RevenueView AS
SELECT SUM(Amount) AS TotalRevenue
FROM Payments;
GO