# Hotel Management System

Database Mini Project using Microsoft SQL Server

---

## Introduction

The Hotel Management System is a database management mini project developed using Microsoft SQL Server. The main purpose of this project is to manage hotel operations efficiently by maintaining records related to customers, room bookings, reservations, room categories, and payments. The project demonstrates practical implementation of SQL Server concepts such as normalization, relationships, CRUD operations, functions, views, triggers, indexes, and transactions.

---

## Objectives of the Project

- Manage customer details efficiently
- Maintain room booking and reservation records
- Store payment details securely
- Reduce data redundancy using normalization
- Implement CRUD operations
- Demonstrate SQL Server concepts practically
- Ensure data consistency using primary and foreign keys

---

## Technologies Used

### Microsoft SQL Server
Used as the primary database management system.

### SQL Server Management Studio (SSMS)
Used for query execution and database administration.

### dbdiagram.io
Used to create the ER Diagram and visualize relationships between tables.

---

## Database Name

```sql
HotelManagementSystem
```

---

## Modules of the System

### Customer Management
Stores customer details such as:
- Full Name
- Phone Number
- Email
- Address

### Room Category Module
Manages:
- Room categories
- Room pricing

### Room Management
Maintains:
- Room details
- Availability status

### Reservation Management
Handles:
- Bookings
- Check-In and Check-Out dates
- Reservation status

### Payment Management
Stores:
- Payment amount
- Payment date
- Payment method

---

## Database Tables

### Customers Table

| Column Name | Description |
|---|---|
| CustomerID | Primary Key |
| FullName | Customer Name |
| Phone | Contact Number |
| Email | Customer Email |
| Address | Customer Address |

---

### RoomCategory Table

| Column Name | Description |
|---|---|
| CategoryID | Primary Key |
| CategoryName | Room Category |
| PricePerNight | Price Per Night |

---

### Rooms Table

| Column Name | Description |
|---|---|
| RoomID | Primary Key |
| RoomNumber | Room Number |
| CategoryID | Foreign Key |
| Status | Room Availability |

---

### Reservations Table

| Column Name | Description |
|---|---|
| ReservationID | Primary Key |
| CustomerID | Foreign Key |
| RoomID | Foreign Key |
| CheckInDate | Check-In Date |
| CheckOutDate | Check-Out Date |
| ReservationStatus | Reservation Status |

---

### Payments Table

| Column Name | Description |
|---|---|
| PaymentID | Primary Key |
| ReservationID | Foreign Key |
| Amount | Payment Amount |
| PaymentDate | Payment Date |
| PaymentMethod | Payment Method |

---

## Primary Keys and Foreign Keys

### Primary Keys
Used to uniquely identify records:
- CustomerID
- CategoryID
- RoomID
- ReservationID
- PaymentID

### Foreign Keys
Used to maintain relationships:
- CategoryID → RoomCategory
- CustomerID → Customers
- RoomID → Rooms
- ReservationID → Reservations

---

## Relationships Between Tables

### RoomCategory → Rooms
One room category can contain multiple rooms.

### Customers → Reservations
One customer can make multiple reservations.

### Rooms → Reservations
One room can appear in multiple reservations over time.

### Reservations → Payments
One reservation can contain multiple payment records.

---

## ER Diagram Explanation

The ER Diagram visually represents:
- Entities
- Attributes
- Primary Keys
- Foreign Keys
- Relationships between tables

Cardinality Symbols:
- `0..1` → Zero or one occurrence
- `*` → Many occurrences

---

## Normalization

The database follows normalization techniques to reduce redundancy and improve consistency.

### First Normal Form (1NF)
- Removes repeating groups
- Ensures atomic values

### Second Normal Form (2NF)
- All non-key attributes fully depend on the primary key

### Third Normal Form (3NF)
- Removes transitive dependencies
- Prevents duplicate data storage

---

## SQL Concepts Used

### DDL Commands
```sql
CREATE
ALTER
DROP
```

### DML Commands
```sql
INSERT
UPDATE
DELETE
SELECT
```

### DCL Commands
```sql
GRANT
REVOKE
```

### TCL Commands
```sql
COMMIT
ROLLBACK
```

---

## Functions

Functions are implemented to:
- Simplify query execution
- Reduce query complexity
- Perform reusable operations

Types Used:
- Scalar Functions
- Table-Valued Functions

---

## Views

Views are created to:
- Simplify complex queries
- Improve readability
- Restrict direct table access
- Enhance security

---

## Triggers

Triggers automatically execute during:
```sql
INSERT
UPDATE
DELETE
```

Purpose:
- Maintain data consistency
- Automate database operations
- Validate conditions

---

## Indexes

Indexes are used to:
- Improve query performance
- Speed up data retrieval
- Optimize searching operations

Types:
- Clustered Index
- Non-Clustered Index

---

## Transactions

Transactions ensure reliable database operations using:

```sql
BEGIN TRANSACTION
COMMIT
ROLLBACK
```

Benefits:
- Maintains consistency
- Prevents partial updates
- Ensures reliability

---

## Project Execution Flow

### Step 1
Create database and tables using DDL commands.

### Step 2
Insert sample data using DML commands.

### Step 3
Create:
- Functions
- Views
- Triggers
- Indexes

### Step 4
Implement transactions.

### Step 5
Execute queries and test outputs.

---

## Advantages of the System

- Reduces manual hotel management work
- Improves reservation handling efficiency
- Maintains referential integrity
- Reduces data redundancy
- Improves query performance
- Easy to maintain and organize data

---

## Future Enhancements

Future improvements can include:
- Online booking system
- Admin dashboard
- Authentication system
- ASP.NET Core frontend
- Staff management module
- Payment gateway integration

---

## Conclusion

The Hotel Management System successfully demonstrates practical implementation of Microsoft SQL Server concepts using a real-world mini project. The project includes normalization, relationships, functions, views, triggers, indexes, and transactions to create an efficient and scalable hotel reservation system. This project improved understanding of relational database design and SQL Server operations learned during the Wipro NGA Training Program conducted by Great Learning.
