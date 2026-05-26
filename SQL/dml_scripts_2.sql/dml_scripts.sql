-- Use Database
USE HotelManagementSystem;
GO

-- Insert Room Categories
INSERT INTO RoomCategory(CategoryName, PricePerNight)
VALUES
('Standard',2000),
('Deluxe',4000),
('Suite',7000);

-- Insert Rooms
INSERT INTO Rooms(RoomNumber, CategoryID, Status)
VALUES
('101',1,'Available'),
('102',1,'Available'),
('103',1,'Booked'),
('201',2,'Available'),
('202',2,'Booked'),
('203',2,'Available'),
('301',3,'Available'),
('302',3,'Booked'),
('303',3,'Available'),
('304',3,'Available');

-- Insert Customers
INSERT INTO Customers(FullName, Phone, Email, Address)
VALUES
('John Smith','9876543210','john@gmail.com','Delhi'),
('Alice Brown','9123456780','alice@gmail.com','Mumbai'),
('Michael Johnson','9988776655','michael@gmail.com','Bangalore'),
('Sophia Williams','9871234567','sophia@gmail.com','Hyderabad'),
('David Miller','9001122334','david@gmail.com','Pune'),
('Emma Davis','9011223344','emma@gmail.com','Chennai'),
('Daniel Wilson','9022334455','daniel@gmail.com','Kolkata'),
('Olivia Moore','9033445566','olivia@gmail.com','Jaipur'),
('James Taylor','9044556677','james@gmail.com','Lucknow'),
('Ava Anderson','9055667788','ava@gmail.com','Patna');

-- Insert Reservations
INSERT INTO Reservations(CustomerID, RoomID, CheckInDate, CheckOutDate, ReservationStatus)
VALUES
(1,1,'2026-05-01','2026-05-05','Confirmed'),
(2,3,'2026-05-02','2026-05-06','Confirmed'),
(3,5,'2026-05-03','2026-05-07','Completed'),
(4,7,'2026-05-04','2026-05-08','Confirmed'),
(5,8,'2026-05-05','2026-05-09','Cancelled'),
(6,2,'2026-05-06','2026-05-10','Completed'),
(7,4,'2026-05-07','2026-05-11','Confirmed'),
(8,6,'2026-05-08','2026-05-12','Completed'),
(9,9,'2026-05-09','2026-05-13','Confirmed'),
(10,10,'2026-05-10','2026-05-14','Completed');

-- Insert Payments
INSERT INTO Payments(ReservationID, Amount, PaymentDate, PaymentMethod)
VALUES
(1,8000,'2026-05-01','UPI'),
(2,10000,'2026-05-02','Card'),
(3,12000,'2026-05-03','Cash'),
(4,15000,'2026-05-04','UPI'),
(5,7000,'2026-05-05','Card'),
(6,9000,'2026-05-06','Cash'),
(7,11000,'2026-05-07','UPI'),
(8,13000,'2026-05-08','Card'),
(9,14000,'2026-05-09','Cash'),
(10,16000,'2026-05-10','UPI');