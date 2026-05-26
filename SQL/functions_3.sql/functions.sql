-- Use Database
USE HotelManagementSystem;
GO

-- Create Scalar Function
CREATE FUNCTION fn_TotalRevenue()
RETURNS DECIMAL(10,2)
AS
BEGIN

    DECLARE @Total DECIMAL(10,2);

    SELECT @Total = SUM(Amount)
    FROM Payments;

    RETURN @Total;

END;
GO

-- Create Table Valued Function
CREATE FUNCTION fn_AvailableRooms()
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Rooms
    WHERE Status='Available'
);