DROP DATABASE IF EXISTS Testing_System_Assignment_1 ;
CREATE DATABASE Testing_System_Assignment_1;
use  Testing_System_Assignment_1;
-- Table 1:Department
CREATE TABLE Department (
	DepartmentID int AUTO_INCREMENT PRIMARY KEY not null,
    PositionName VARCHAR(50)
   
);

-- Table 2: Position
CREATE TABLE Position (
    PositionID INT,
    PositionName ENUM('dev', 'test', 'Scrum Master', 'PM')
);

-- Table 3: Account
CREATE TABLE `Account` (
    AccountID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Email VARCHAR(50),
    Username VARCHAR(50),
    FullName VARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATETIME DEFAULT NOW()
);

-- Table 4: Group
CREATE TABLE `Group` (
    GroupID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATETIME DEFAULT NOW()
);

-- Table 5: GroupAccount
CREATE TABLE GroupAccount (
    GroupID INT,
    AccountID INT,
    JoinDate DATETIME DEFAULT NOW()
);

-- Table 6: TypeQuestion
CREATE TABLE TypeQuestion (
    TypeID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Typename ENUM('Essay', 'Multiple-Choice')
);

-- Table 7: CategoryQuestion
CREATE TABLE CategoryQuestion (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CategoryName ENUM('Java', 'NET', ' SQL', 'Postman', 'Ruby')
);

-- Table 8: Question
CREATE TABLE Question (
    QuestionID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Content VARCHAR(100),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE
);
    
    -- Table 9: Answer
    CREATE TABLE Answer (
    AnswerID INT AUTO_INCREMENT KEY NOT NULL,
    Content VARCHAR(100),
    QuestionID VARCHAR(100),
    isCorrect ENUM('T', 'F')
);
    
    -- Table 10: Exam
    CREATE TABLE Exam (
    ExamID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `code` VARCHAR(40),
    Tile VARCHAR(30),
    CategoryID VARCHAR(50),
    Duration ENUM('90', '120'),
    CreatorID INT,
    CreateDate DATETIME DEFAULT NOW()
);
	
    -- Table 11: ExamQuestion
    CREATE TABLE ExamQuestion (
    ExamID INT,
    QuestionID INT
);