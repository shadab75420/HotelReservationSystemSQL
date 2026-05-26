-- Use Database
USE HotelManagementSystem;
GO

-- Create Trigger
CREATE TRIGGER trg_PreventDoubleBooking
ON Reservations
INSTEAD OF INSERT
AS
BEGIN

    IF EXISTS(
        SELECT 1
        FROM Reservations r
        JOIN inserted i
        ON r.RoomID = i.RoomID
    )
    BEGIN
        PRINT 'Room already booked';
    END

    ELSE
    BEGIN
        INSERT INTO Reservations
        (
            CustomerID,
            RoomID,
            CheckInDate,
            CheckOutDate,
            ReservationStatus
        )
        SELECT
            CustomerID,
            RoomID,
            CheckInDate,
            CheckOutDate,
            ReservationStatus
        FROM inserted;
    END

END;