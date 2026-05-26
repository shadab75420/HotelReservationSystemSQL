-- Use Database
USE HotelManagementSystem;
GO

-- COMMIT Transaction Example
BEGIN TRANSACTION;

UPDATE Rooms
SET Status='Booked'
WHERE RoomID = 2;

COMMIT;

-- ROLLBACK Transaction Example
BEGIN TRANSACTION;

UPDATE Rooms
SET Status='Booked'
WHERE RoomID = 3;

ROLLBACK;