create database customer;

use customer;

drop table customers;

create table customers (
	CustomerID int primary key,
    FullName varchar(100),
    Email varchar(100) not null unique,
    -- nên có NOT NULL + UNIQUE để tránh email bị thiếu hoặc trùng (gây lỗi gửi email)

    Age int check(age >= 0 and age <= 120)
    -- kiểm tra 0 <= age <= 120
);