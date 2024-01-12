-- create database `testing_system1`;
use `testing_system1`;

drop table if exists `department`;
create table `Department`
(
	`Department_id` int,
    `Department_name`  varchar(50)
);
drop table if exists `position`;
create table `position`
(
	`position_id` int,
    `position_name` varchar(50)
);
drop table if exists `account`;
create table `account`
(
	`account_id` int,
    `email` varchar(50),
    `user_name` varchar(50),
    `full_name` varchar(50),
    `department_id` int,
    `position_id` int,
    `create_date` date
);
drop table if exists `group`;
create table `group`
(
	`group_id` int,
    `group_name` varchar(50),
    `creator_id` int,
    `create_date` date
);

drop table if exists `group_account`;
create table `group_account`
(
	`group_id` int,
    `account_id` int,
    `join_date` date
);

drop table if exists `type_question`;
create table `type_question`
(
	`type_id` int,
    `type_name` varchar(50)
);

drop table if exists `category_question`;
create table `category_question`
(
	`category_id` int,
    `category_name` varchar(50)
);

drop table if exists `question`;
create  table `question`
(
	`question_id` int,
    `content` varchar(50),
    `category_id` int,
    `type_id` int,
    `creator_id` int,
    `creator_date` date
);

drop table if exists `answer`;
create table `answer`
(
	`andswer_id` int,
    `content` varchar(50),
    `question_id` int,
    `is_correct` varchar(50)
);

drop table if exists `exam`;
create table `exam`
(
	`exam_id` int,
    `code` varchar(50),
    `title` varchar(50),
    `category_id` int,
    `duration` time,
    `creator_id` int,
    `create_date` date
);

drop table if exists `exam_question`;
create table `exam_question`
(
	`exam_id` int,
    `question_id` int
);




