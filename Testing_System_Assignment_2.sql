drop database if exists `Testing_System_Assignment_2`;
create database `Testing_System_Assignment_2`;
use `Testing_System_Assignment_2`;
-- 1:Department 

CREATE TABLE `Department` (
    DepartmentID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName NVARCHAR(50) NOT NULL UNIQUE KEY
);
-- Table 2: Position 

CREATE TABLE `Position` (
    PositionID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName NVARCHAR(50) NOT NULL UNIQUE KEY
);
-- Table 3: Account 

CREATE TABLE `Account` (
    AccountID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(50) UNIQUE KEY NOT NULL,
    Username VARCHAR(50),
    FullName VARCHAR(50),
    DepartmentID TINYINT UNSIGNED,
    PositionID TINYINT UNSIGNED,
    CreateDate DATE default(now()),
    FOREIGN KEY (DepartmentID)
        REFERENCES Department (DepartmentID),
    FOREIGN KEY (PositionID)
        REFERENCES `Position` (PositionID)
);
-- Table 4: Group 
CREATE TABLE `Group` (
    GroupID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName NVARCHAR(50) unique KEY,
    CreatorID TINYINT UNSIGNED NOT NULL,
    CreateDate DATE default(now()),
    FOREIGN KEY (CreatorID)
        REFERENCES `Account`(AccountID)
);
-- Table 5: GroupAccount 

CREATE TABLE `GroupAccount` (
    GroupID TINYINT UNSIGNED ,
    AccountID TINYINT UNSIGNED NOT NULL,
    JoinDate DATE default(now()),
    FOREIGN KEY (GroupID)
	REFERENCES `Group` (GroupID),
	FOREIGN KEY (AccountID)
	REFERENCES `Account` (AccountID)
);
-- Table 6: TypeQuestion 

CREATE TABLE `TypeQuestion` (
    TypeID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName ENUM('Essay', 'Multiple-Choice')
);

-- Table 7: CategoryQuestion 
CREATE TABLE `CategoryQuestion` (
    CategoryID TINYINT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);
-- Table 8: Question 
CREATE TABLE `Question` (
    QuestionID TINYINT AUTO_INCREMENT PRIMARY KEY,
    Content NVARCHAR(50) NOT NULL,
    CategoryID TINYINT NOT NULL,
    TypeID TINYINT UNSIGNED,
    CreatorID TINYINT UNSIGNED,
    CreateDate DATE,
    FOREIGN KEY (CategoryID)
        REFERENCES CategoryQuestion (CategoryID),
    FOREIGN KEY (TypeID)
        REFERENCES TypeQuestion (TypeID),
    FOREIGN KEY (CreatorID)
        REFERENCES `Account` (AccountID)
);
-- Table 9: Answer 
CREATE TABLE `Answer` (
    AnswerID TINYINT AUTO_INCREMENT PRIMARY KEY,
    Content NVARCHAR(500) NOT NULL,
    QuestionID TINYINT NOT NULL,
    isCorrect BIT default(0),
    FOREIGN KEY (QuestionID)
        REFERENCES Question (QuestionID)
);
-- Table 10: Exam 

CREATE TABLE `Exam` (
    ExamID tinyint AUTO_INCREMENT PRIMARY KEY,
    `Code` char(10) unique key not null,
    Title NVARCHAR(100) NOT NULL,
    CategoryID TINYINT,
    Duration tinyint,
    CreatorID TINYINT UNSIGNED ,
    CreateDate DATE default(now()),
    FOREIGN KEY (CategoryID)
        REFERENCES CategoryQuestion (CategoryID),
        FOREIGN KEY (CreatorID)
        REFERENCES `Account` (AccountID)
);
-- Table 11: ExamQuestion 
CREATE TABLE `ExamQuestion` (
    ExamID TINYINT NOT NULL,
    QuestionID TINYINT NOT NULL,
    FOREIGN KEY (QuestionID)
        REFERENCES Question (QuestionID),
    FOREIGN KEY (ExamID)
        REFERENCES Exam (ExamID)
);
-- add dâta Department
insert into Department(DepartmentID,DepartmentName)
values		(1,		N'marketing'		),
			(2,		N'sale'		),
            (3,		N'bảo vệ'		),
            (4,		N'phó giám đốc'		),
            (5,		N'bán hàng'		);
   -- add dâta Position
insert into `Position`(PositionID,PositionName)
values		(6,		N'Dev'		),
			(7,		N'Test'		),
            (8,		N'Scrum Master'		),
            (9,		N'PM'		),
            (10,		N'Trưởng Phòng'		);         
 -- add dâta Account
insert into `Account` (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) values (1, 'mziehm0@cafepress.com', 'mziehm0', 'Michell Ziehm', 1, 1, '6/11/2008');
insert into `Account` (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) values (2, 'dzellick1@tripod.com', 'dzellick1', 'Darrell Zellick', 2, 2, '7/18/2011');
insert into `Account` (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) values (3, 'dredgate2@umn.edu', 'dredgate2', 'Demetre Redgate', 3, 3, '2/3/2022');
insert into `Account` (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) values (4, 'maubry3@wiley.com', 'maubry3', 'Muffin Aubry', 4, 4, '6/16/2015');
insert into `Account` (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) values (5, 'vtoderi4@bloglovin.com', 'vtoderi4', 'Vittoria Toderi', 5, 5, '10/14/2014');
-- add dâta Group
insert into `Group` (GroupID, GroupName, CreatorID, CreateDate) values (1, '7 Select Aspirin', 1, '2/14/2006');
insert into `Group` (GroupID, GroupName, CreatorID, CreateDate) values (2, 'KIDNEY DRAINAGE', 2, '2/12/2005');
insert into `Group` (GroupID, GroupName, CreatorID, CreateDate) values (3, 'UV Capture Sun BB', 3, '8/9/2003');
insert into `Group` (GroupID, GroupName, CreatorID, CreateDate) values (4, 'Estradiol', 4, '10/26/2018');
insert into `Group` (GroupID, GroupName, CreatorID, CreateDate) values (5, 'Ultravate X', 5, '10/8/2019');
-- add dâta GroupAccount
insert into `GroupAccount` (GroupID, AccountID, JoinDate) values (1, 1, '4/17/2022');
insert into `GroupAccount` (GroupID, AccountID, JoinDate) values (2, 2, '9/7/2022');
insert into `GroupAccount` (GroupID, AccountID, JoinDate) values (3, 3, '11/12/2022');
insert into `GroupAccount` (GroupID, AccountID, JoinDate) values (4, 4, '12/5/2022');
insert into `GroupAccount` (GroupID, AccountID, JoinDate) values (5, 5, '6/5/2022');
-- add dâta TypeQuestion
insert into `TypeQuestion` (TypeID, TypeName, JoinDate) values (1, 'PediaCare Childrens Plus Cough and Runny Nose', '2/27/2022');
insert into `TypeQuestion` (TypeID, TypeName, JoinDate) values (2, 'Allopurinol', '9/7/2022');
insert into `TypeQuestion` (TypeID, TypeName, JoinDate) values (3, 'Prempro', '8/5/2022');
insert into `TypeQuestion` (TypeID, TypeName, JoinDate) values (4, 'Latanoprost', '7/3/2022');
insert into `TypeQuestion` (TypeID, TypeName, JoinDate) values (5, 'Lexapro', '6/6/2022');
-- add dâta CategoryQuestion
insert into CategoryQuestion (CategoryID, CategoryName) values (1, 'CLINIMIX E');
insert into CategoryQuestion (CategoryID, CategoryName) values (2, 'Red Oak');
insert into CategoryQuestion (CategoryID, CategoryName) values (3, 'Rugby Nicotine Polacrilex Gum, Original Flavor');
insert into CategoryQuestion (CategoryID, CategoryName) values (4, 'Protector SPF 15');
insert into CategoryQuestion (CategoryID, CategoryName) values (5, 'Hydrocodone Bitartrate and Acetaminophen');
-- add dâta Question
insert into `Question` (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) values (1, 'Cabomba caroliniana A. Gray var. pulcherrima Harper', 1, 1, 1, '7/27/2022');
insert into `Question` (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) values (2, 'Petradoria pumila (Nutt.) Greene ssp. pumila', 2, 2, 2, '8/1/2022');
insert into `Question` (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) values (3, 'Bergerocactus emoryi (Engelm.) Britton & Rose', 3, 3, 3, '7/2/2022');
insert into `Question` (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) values (4, 'Anisacanthus quadrifidus (Vahl) Nees', 4, 4, 4, '10/8/2022');
insert into `Question` (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) values (5, 'Amberboa moschata (L.) DC.', 5, 5, 5, '6/27/2022');
-- add dâta Answer
insert into `Answer` (AnswerID, Content, QuestionID, isCorrect) values (1, 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', 1, false);
insert into `Answer` (AnswerID, Content, QuestionID, isCorrect) values (2, 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', 2, false);
insert into `Answer` (AnswerID, Content, QuestionID, isCorrect) values (3, 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 3, true);
insert into `Answer` (AnswerID, Content, QuestionID, isCorrect) values (4, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', 4, false);
insert into `Answer` (AnswerID, Content, QuestionID, isCorrect) values (5, 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', 5, false);
-- add dâta Answer
insert into `Exam` (ExamID, `Code`, Title, CategoryID, Duration, CreatorID, CreateDate) values (1, 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', 'Oenothera albicaulis Pursh', 1, '1/30/2022', 1, '10/5/2022');
insert into `Exam` (ExamID, `Code`, Title, CategoryID, Duration, CreatorID, CreateDate) values (2, 'consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus', 'Thelypteris ×palmeri W.H. Wagner', 2, '8/11/2022', 2, '3/15/2022');
insert into `Exam` (ExamID, `Code`, Title, CategoryID, Duration, CreatorID, CreateDate) values (3, 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', 'Niphidium crassifolium (L.) Lellinger', 3, '1/8/2022', 3, '8/29/2022');
insert into `Exam` (ExamID, `Code`, Title, CategoryID, Duration, CreatorID, CreateDate) values (4, 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', 'Sabatia stellaris Pursh', 4, '1/18/2022', 4, '9/29/2022');
insert into `Exam` (ExamID, `Code`, Title, CategoryID, Duration, CreatorID, CreateDate) values (5, 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien', 'Solanum pyrifolium Lam.', 5, '7/1/2022', 5, '8/18/2022');
-- add dâta ExamQuestion

insert into `ExamQuestion` (ExamID, QuestionID) values (1, 1);
insert into `ExamQuestion` (ExamID, QuestionID) values (2, 2);
insert into `ExamQuestion` (ExamID, QuestionID) values (3, 3);
insert into `ExamQuestion` (ExamID, QuestionID) values (4, 4);
insert into `ExamQuestion` (ExamID, QuestionID) values (5, 5);