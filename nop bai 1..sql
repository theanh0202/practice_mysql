DROP DATABASE `Testing_System`;
CREATE DATABASE `Testing_System`;
USE `Testing_System`;

CREATE TABLE Department
(
	Department_ID			INT,
	Department_Name			VARCHAR(50)
);

CREATE TABLE `Position` 
(
	Position_ID		INT ,
	Position_Name	VARCHAR (50)
);

CREATE TABLE `Account` (
    Account_ID 	INT,
    Email 		VARCHAR(50),
    Username 	VARCHAR(50),
    FullName 	VARCHAR(50),
    Department_ID 	INT,
    Position_ID 	INT,
    CreateDate 		DATE
);

CREATE TABLE `Group` 
(
    Group_ID INT,
    GroupName	VARCHAR(50),
    Creator_ID INT,
    CreateDate DATE
);

CREATE TABLE `GroupAccount` (
    Group_ID INT,
    Account_ID INT,
    JoinDate DATE
);

CREATE TABLE TypeQuestion (
    Type_ID INT,
    Type_Name VARCHAR(50)
);

CREATE TABLE CategoryQuestion (
    Category_ID INT,
    Category_Name VARCHAR(50)
);

CREATE TABLE Question (
    Question_ID INT,
    Content VARCHAR(50),
    Category_ID INT,
    Type_ID INT,
    Creator_ID INT,
    CreateDate DATE
);

CREATE TABLE `Answer` (
    Answer_ID INT,
    Content VARCHAR(100),
    Question_ID INT,
    isCorrect VARCHAR(100)
);

CREATE TABLE `Exam` (
    Exam_ID INT,
    `Code` VARCHAR(50),
    Title VARCHAR(50),
    Category_ID INT,
    Duration TIME,
    Creator_ID INT,
    CreateDate DATE
);

CREATE TABLE ExamQuestion (
    Exam_ID INT,
    Question_ID INT
);