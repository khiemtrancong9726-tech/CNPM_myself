DROP DATABASE IF EXISTS DA;
CREATE DATABASE DA;
USE DA;

-- 1. Bảng User (User_ID CHAR(4))
CREATE TABLE User (
    User_ID CHAR(4) PRIMARY KEY,
    Full_Name VARCHAR(30),
    Email VARCHAR(50),
    Pass VARCHAR(20),
    Phone CHAR(10),
    Name_Role VARCHAR(20)
);

-- 2. Bảng Loại Phòng (Type_Name max 10 chars, Amenities max 20 chars)
CREATE TABLE Room_Types (
    Type_ID CHAR(3) PRIMARY KEY,
    Type_Name VARCHAR(10),       -- Rất ngắn, phải viết tắt
    Overnight_Price DECIMAL(10,2),
    MaxGuests INT,
    Description TEXT,
    Amenities VARCHAR(20)        -- Rất ngắn
);

-- 3. Bảng Phòng (Room_ID CHAR(3))
CREATE TABLE Room (
    Room_ID CHAR(3) PRIMARY KEY,
    Type_ID CHAR(3),
    Room_Num CHAR(4),
    Status_Room VARCHAR(20),
    CONSTRAINT fk_room_type
        FOREIGN KEY (Type_ID)
        REFERENCES Room_Types(Type_ID)
);

-- 4. Bảng Booking (Booking_ID CHAR(12))
CREATE TABLE Booking (
    Booking_ID CHAR(12) PRIMARY KEY,
    User_ID CHAR(4),
    Room_ID CHAR(3),
    Check_in DATE,
    Check_out DATE,
    Price DECIMAL(10,2),
    Status_Book VARCHAR(20),
    Booking_Date DATE,
    Receiver_Name VARCHAR(30),
    Receiver_Phone CHAR(10),
    CONSTRAINT fk_booking_user
        FOREIGN KEY (User_ID)
        REFERENCES User(User_ID),
    CONSTRAINT fk_booking_room
        FOREIGN KEY (Room_ID)
        REFERENCES Room(Room_ID)
);

-- 5. Bảng Payment
CREATE TABLE Payment (
    Payment_ID CHAR(3) PRIMARY KEY,
    Booking_ID CHAR(12),
    Payment_Method VARCHAR(20),
    Total_Price DECIMAL(10,2),
    Status_Payment VARCHAR(20),
    Transaction_ID VARCHAR(20),
    Payment_Date DATE,
    CONSTRAINT fk_payment_booking
        FOREIGN KEY (Booking_ID)
        REFERENCES Booking(Booking_ID)
);

-- =============================================
-- DỮ LIỆU MẪU (ĐÃ RÚT GỌN CHO KHỚP SCHEMA)
-- =============================================

-- User (ID 4 ký tự: U001)
INSERT INTO User VALUES 
('U001', 'Admin User', 'admin@noizee.com', '123', '0909000111', 'Admin'),
('U002', 'Receptionist', 'staff@noizee.com', '123', '0909000222', 'Staff'),
('U003', 'Guest A', 'guest@gmail.com', '123', '0912345678', 'Member');

-- Room Types (Type_ID 3 ký tự: T01. Tên < 10 ký tự)
INSERT INTO Room_Types VALUES
('T01', 'Std Dbl', 850000, 2, 'Phong tieu chuan', 'WiFi, TV, AC'),
('T02', 'Dlx Sea', 1500000, 2, 'Phong huong bien', 'WiFi, TV 4K, Bar'),
('T03', 'Suite', 3200000, 4, 'Can ho cao cap', 'Full Option');

-- Room (Room_ID 3 ký tự: R01)
INSERT INTO Room VALUES
('R01', 'T01', '101', 'Active'),
('R02', 'T01', '102', 'Active'),
('R03', 'T02', '201', 'Active'),
('R04', 'T02', '202', 'Active'),
('R05', 'T03', '301', 'Active'),
('R06', 'T03', '302', 'Maintenance');