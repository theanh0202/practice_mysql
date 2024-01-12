Create database Testing_System_Assignment_1;
use Testing_System_Assignment_1 ;
 
 create table Department (
 department_id int,
 department_name varchar(50)
 );
 
 create table position (
position_id int,
position_name varchar(50) 
);
create table `account`(
account_id int,
email varchar(50),
username varchar(100),
fullname varchar(100),
department_id int,
position_id int,
create_date date
);

create table `group` (
group_id int,
group_name varchar(100),
creator_id int,
createdate date
);
create table groupaccount(
account_id int,
group_id int,
joindate date
);
 create table typequestion(
 type_id int,
 type_name varchar(100)
 );
 create table categoryquestion(
    category_id int,
    category_name varchar(50)
    );
    create table question(
    question_id int,
    content varchar(200),
    category_id int,
    type_id int,
    creator_id int,
    create_date date
    );
    create table answer(
    answer_id int,
    content varchar(200),
    question_id int,
    is_Correct enum('true','false')
    );
    create table exam(
    exam_id int,
    `code` int,
    title varchar(50),
    category_id int,
    duration time,
    creator_id int,
    Create_date date
    );
    create table examquestion(
    exam_id int,
    question_id int
    );

    