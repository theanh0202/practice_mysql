CREATE DATABASE `Testing_System`;
USE `Testing_System`;

drop database if exists `testing_system_assignment_1`;
create database if not exists `testing_system_assignment_1`;
use `testing_system_assignment_1`;

-- Table 1: Department
create table department (
   DepartmentId tinyint UNSIGNED PRIMARY KEY AUTO_INCREMENT,
   DepartmentName nvarchar(100)
);

-- Table 2: Position
create table `Position` (
   PositionID int PRIMARY KEY AUTO_INCREMENT,
   PositionName varchar(50)
);

CREATE TABLE `Account` (
    Account_ID INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(10) UNIQUE KEY NOT NULL,
    Username VARCHAR(10) UNIQUE KEY,
    Full_Name VARCHAR(10),
    Department_ID tinyint UNSIGNED,
    Position_ID INT,
    Create_Date DATE DEFAULT(current_date()),
    FOREIGN KEY (Department_ID) REFERENCES Department(DepartmentId),
    FOREIGN KEY (Position_ID) REFERENCES `Position`(PositionId)
);
   
CREATE TABLE `Group` (
    GroupID INT,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATE DEFAULT(current_date())
);

create table GroupAccount(
	GroupID int,
    AccountID int,
    JoinDate date DEFAULT(current_date())
);

create table  `TypeQuestion`(
	TypeID int,
    TypeName enum('Essay', 'Multiple-Choice')
);

create table `Answer`
(
	AnswerId int UNSIGNED PRIMARY key AUTO_INCREMENT,
    Content nvarchar(200),
    QuestionID int unsigned,
    isCorrect bit default(0)
)


