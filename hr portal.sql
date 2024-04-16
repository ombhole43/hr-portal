create database hrportal;
use hrportal;
CREATE TABLE Admin (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
    );
CREATE TABLE Employee (
    eId INT PRIMARY KEY,
    eName VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    address VARCHAR(255),
    designation VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);
CREATE TABLE Department (
    dId INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    empCount INT
);
CREATE TABLE Project (
    pId INT PRIMARY KEY,
    pName VARCHAR(100) NOT NULL,
    eName VARCHAR(100), 
    progress DECIMAL(5,2),
    deadline DATE
);
CREATE TABLE Payroll (
    payId INT PRIMARY KEY,
    tax DECIMAL(5,2),
    eName VARCHAR(100),
    date DATE,
    salaryAmt DECIMAL(10,2)
);
CREATE TABLE Attendance (
    eName VARCHAR(100),
    eId INT,
    time TIME,
    date DATE,
    PRIMARY KEY (eId, date)
);
