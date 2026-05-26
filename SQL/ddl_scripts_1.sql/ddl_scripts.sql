USE master;
GO

IF DB_ID('HotelManagementSystem') IS NOT NULL
BEGIN
    ALTER DATABASE HotelManagementSystem
    SET SINGLE_USER
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE HotelManagementSystem;
END
GO

CREATE DATABASE HotelManagementSystem;
GO

USE HotelManagementSystem;
GO

-- Create Customers Table
CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(100),
    Address VARCHAR(200)
);

-- Create Room Category Table
CREATE TABLE RoomCategory(
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(50),
    PricePerNight DECIMAL(10,2)
);

-- Create Rooms Table
CREATE TABLE Rooms(
    RoomID INT PRIMARY KEY IDENTITY(1,1),
    RoomNumber VARCHAR(10) UNIQUE,
    CategoryID INT,
    Status VARCHAR(20)
    CHECK(Status IN ('Available','Booked')),

    FOREIGN KEY(CategoryID)
    REFERENCES RoomCategory(CategoryID)
);

-- Create Reservations Table
CREATE TABLE Reservations(
    ReservationID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    ReservationStatus VARCHAR(20),

    FOREIGN KEY(CustomerID)
    REFERENCES Customers(CustomerID),

    FOREIGN KEY(RoomID)
    REFERENCES Rooms(RoomID)
);

-- Create Payments Table
CREATE TABLE Payments(
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    ReservationID INT,
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    PaymentMethod VARCHAR(20),

    FOREIGN KEY(ReservationID)
    REFERENCES Reservations(ReservationID)
);