-- Extra Assignment 1-2
-- Author: Do Thi Minh Nguyet
-- Date modified: 2/1/2023
create database Fresher_Training_Management;
use Fresher_Training_Management;

-- Exercise 1: Create table Trainee
-- Question 1:
CREATE TABLE trainee (
    traineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name NVARCHAR(50) NOT NULL,
    Birth_Date DATE,
    Gender ENUM('Male', 'Female', 'Unknown') NOT NULL,
    ET_IQ INT UNSIGNED CHECK (ET_IQ <= 20),
    ET_Gmath INT UNSIGNED CHECK (ET_Gmath <= 20),
    ET_ENglish INT UNSIGNED CHECK (ET_English <= 50),
    Training_Class CHAR(10),
    Evaluation_Notes TEXT
);
-- Question 2:
Alter table trainee 
	add column VTI_Account varchar(50) not null unique key;

-- Exercise 2: Data Types
create table Data_types (
	ID int primary key auto_increment,
	`Name` varchar(50),
	`Code` char(5),
	ModifiedDate Datetime default(current_time())
);

-- Exercise 3: Data Types (2)
create table Data_types_2 (
	ID int primary key auto_increment,
	`Name` varchar(50),
	BirthDate Date,
	Gender ENUM('Male', 'Female', 'unknown'),
	IsDeletedFlag bit
);

-- Extra Assignment 1-2
-- Author: Do Thi Minh Nguyet
-- Date modified: 2/1/2023
create database Fresher_Training_Management;
use Fresher_Training_Management;

-- Exercise 1: Create table Trainee
-- Question 1:
CREATE TABLE trainee (
    traineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name NVARCHAR(50) NOT NULL,
    Birth_Date DATE,
    Gender ENUM('Male', 'Female', 'unknown') NOT NULL,
    ET_IQ INT UNSIGNED CHECK (ET_IQ <= 20),
    ET_Gmath INT UNSIGNED CHECK (ET_Gmath <= 20),
    ET_ENglish INT UNSIGNED CHECK (ET_English <= 50),
    Training_Class CHAR(10),
    Evaluation_Notes TEXT
);
-- Question 2:
Alter table trainee add column VTI_Account varchar(50) not null unique;

-- Exercise 2: Data Types
-- ID int primary key auto_increment
-- Name varchar(50)
-- Code char(5)
-- ModifiedDate Datetime default(current_time())

-- Question 3: Data Types (2)
-- ID int primary key auto_increment
-- Name varchar(50)
-- BirthDate Date
-- Gender ENUM('Male', 'Female', 'unknown')
-- IsDeletedFlag bit

