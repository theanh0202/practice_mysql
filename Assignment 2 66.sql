DROP DATABASE IF EXISTS Testing_System_Assignment_2 ;
CREATE DATABASE Testing_System_Assignment_2;
use  Testing_System_Assignment_2;

-- Table 1:Department
CREATE TABLE Department (
	DepartmentID int AUTO_INCREMENT PRIMARY KEY not null,
	DepartmentName VARCHAR(50)
   );

-- Table 2: Position
CREATE TABLE `Position` (
    PositionID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    PositionName ENUM('dev', 'test', 'Scrum Master', 'PM')
);

-- Table 3: Account
CREATE TABLE `Account` (
    AccountID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Email VARCHAR(100),
    Username VARCHAR(50),
    FullName NVARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES `Position` (PositionID)
);

-- Table 4: Group
CREATE TABLE `Group` (
    GroupID INT AUTO_INCREMENT PRIMARY KEY not null,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY ( CreatorID) REFERENCES `Account`(AccountID)
 
);

-- Table 5: GroupAccount
CREATE TABLE GroupAccount (
    GroupID INT,
    AccountID INT,
    JoinDate DATETIME DEFAULT NOW(),
	FOREIGN KEY (GroupID) REFERENCES `Group` (GroupID),
    FOREIGN KEY (AccountID) REFERENCES account (AccountID)

);

-- Table 6: TypeQuestion
CREATE TABLE TypeQuestion (
    TypeID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Typename ENUM('Essay', 'Multiple-Choice')
);

-- Table 7: CategoryQuestion
CREATE TABLE CategoryQuestion (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CategoryName ENUM('Java', 'NET', 'SQL', 'Postman', 'Ruby')
);

-- Table 8: Question
CREATE TABLE Question (
    QuestionID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Content VARCHAR(100),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    FOREIGN KEY  (CategoryID) REFERENCES  CategoryQuestion(CategoryID),
    FOREIGN KEY  (TypeID) REFERENCES TypeQuestion(TypeID),
	FOREIGN KEY ( CreatorID) references `Account` (accountid)
);
    
    -- Table 9: Answer
    CREATE TABLE Answer (
    AnswerID INT AUTO_INCREMENT KEY NOT NULL,
    Content VARCHAR(100),
    QuestionID INT,
    isCorrect ENUM('T', 'F'),
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
    
    -- Table 10: Exam
    CREATE TABLE Exam (
    ExamID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `code` VARCHAR(40),
    Tile VARCHAR(30),
    CategoryID INT,
    Duration ENUM('90', '120'),
    CreatorID INT,
    CreateDate DATETIME DEFAULT NOW(),
    FOREIGN KEY (CategoryID) REFERENCES Question (CategoryID),
	FOREIGN KEY (CreatorID) REFERENCES Question (CreatorID)
  
);
	
    -- Table 11: ExamQuestion
    CREATE TABLE ExamQuestion (
    ExamID INT ,
    QuestionID INT,
    FOREIGN KEY(ExamID) REFERENCES Exam ( ExamID),
    FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID)
    
);