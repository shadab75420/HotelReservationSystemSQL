-- Use Database
USE HotelManagementSystem;
GO

-- Create Index on Room Status
CREATE INDEX idx_roomstatus
ON Rooms(Status);

-- Create Index on Customer Name
CREATE INDEX idx_customername
ON Customers(FullName);