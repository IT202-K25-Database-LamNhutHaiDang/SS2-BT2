create database customer;

use customer;

create table customers (
	CustomerID int primary key,
    FullName varchar(100),
    Email varchar(100) not null unique,
    -- nên có NOT NULL + UNIQUE để tránh email bị thiếu hoặc trùng (gây lỗi gửi email)

    Age int check(age >= 0 and age <= 120)
    -- kiểm tra 0 <= age <= 120
);

-- ===== VÁ LỖI BẰNG ALTER TABLE =====

-- Thêm NOT NULL cho Email
ALTER TABLE customers
MODIFY Email VARCHAR(100) NOT NULL;

-- Thêm UNIQUE cho Email
ALTER TABLE customers
ADD CONSTRAINT uq_customers_email UNIQUE (Email);

-- Thêm CHECK cho Age
ALTER TABLE customers
ADD CONSTRAINT chk_customers_age 
CHECK (Age >= 0 AND Age <= 120);
-- kiểm tra 0 <= age <= 120