-- Use Database
USE HotelManagementSystem;
GO

-- Create Login
CREATE LOGIN HotelStafff
WITH PASSWORD = 'Hotel@123';

-- Create User
CREATE USER HotelStaffUser
FOR LOGIN HotelStaff;

-- Grant Permissions
GRANT SELECT, INSERT
ON Customers
TO HotelStaffUser;

-- Revoke Permissions
REVOKE INSERT
ON Customers
FROM HotelStaffUser;