drop database if exists TestingSystemt;
create database `TestingSystemt`;
use `TestingSystemT`;
-- 1:Department 

CREATE TABLE `Department` (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);
-- Table 2: Position 

CREATE TABLE ` Position` (
    PositionID INT,
    PositionName VARCHAR(50)
);
-- Table 3: Account 

CREATE TABLE ` Account ` (
    AccountID INT,
    Email VARCHAR(50),
    Username VARCHAR(50),
    FullName VARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE
);
-- Table 4: Group 
CREATE TABLE ` Group ` (
    GroupID INT,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATE
);
-- Table 5: GroupAccount 

CREATE TABLE ` GroupAccount ` (
    GroupID INT,
    AccountID INT,
    JoinDate DATE
);
-- Table 6: TypeQuestion 

CREATE TABLE ` TypeQuestion ` (
    TypeID INT,
    TypeName VARCHAR(50)
);
-- Table 7: CategoryQuestion 
CREATE TABLE ` CategoryQuestion ` (
    CategoryID INT,
    CategoryName VARCHAR(50)
);
-- Table 8: Question 
CREATE TABLE ` Question   ` (
    QuestionID INT,
    Content VARCHAR(50),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE
);
-- Table 9: Answer 
CREATE TABLE ` Answer ` (
    AnswerID INT,
    Content VARCHAR(50),
    QuestionID INT,
    isCorrect BOOL
);
-- Table 10: Exam 

CREATE TABLE ` Exam  ` (
    ExamID INT,
    `Code` INT,
    Title VARCHAR(50),
    CategoryID INT,
    Duration TIME,
    CreatorID INT,
    CreateDate DATE
);
-- Table 11: ExamQuestion 
CREATE TABLE ` ExamQuestion ` (
    ExamID INT,
    QuestionID VARCHAR(50)
);

