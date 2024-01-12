USE Testing_System_Assignment_2 ;
-- add data Department
INSERT INTO Department (DepartmentName)
VALUE (N'maketing'),
		(N'sale'),
		(N'bảo vệ'),
		(N'nhân sự'),
		(N'Kỹ thuật'),
		(N'tài chính '),
		(N'Phó giám đốc'),
		(N'giám đốc'),
		(N'thư ký'),
		(N'bán hàng ');
        
	-- add data Position
INSERT into	`Position` ( PositionName) 
VALUE 
				('Test'),
                ('Dev'),
                ('Scrum Master'),
                ('PM');
 
	-- add data account 
INSERT INTO `account` (Email, Username, Fullname, DepartmentID, PositionID)
VALUES				('haidang29productions@gmail.com'	, 'dangblack'		,'Nguyễn hải Đăng'		,   5	,   1	),
					('account1@gmail.com'				, 'quanganh'		,'Nguyen Chien Thang2'	,   1	,   2	),
                    ('account2@gmail.com'				, 'vanchien'		,'Nguyen Van Chien'		,   2	,   3	),
                    ('account3@gmail.com'				, 'cocoduongqua'	,'Duong Do'				,   3	,   4	),
                    ('account4@gmail.com'				, 'doccocaubai'		,'Nguyen Chien Thang1'	,   4	,   2	),
                    ('dapphatchetngay@gmail.com'		, 'khabanh'			,'Ngo Ba Kha'			,   6	,   3	),
                    ('songcodaoly@gmail.com'			, 'huanhoahong'		,'Bui Xuan Huan'		,   7	,   2	),
                    ('sontungmtp@gmail.com'				, 'tungnui'			,'Nguyen Thanh Tung'	,   8	,   3	),
                    ('duongghuu@gmail.com'				, 'duongghuu'		,'Duong Van Huu'		,   9	,   4	),
                    ('vtiaccademy@gmail.com'			, 'vtiaccademy'		,'Vi Ti Ai'				,   9	,   4	);
      
      -- add data group
INSERT INTO `Group`	( GroupName			, CreatorID	)
VALUES 				(N'Testing System'		,   5		),
					(N'Development'			,   1		),
                    (N'VTI Sale 01'			,   2		),
                    (N'VTI Sale 02'			,   3		),
                    (N'VTI Sale 03'			,   4		),
                    (N'VTI Creator'			,   6		),
                    (N'VTI Marketing 01'	,   7		),
                    (N'Management'			,   8		),
                    (N'Chat with love'		,   9		),
                    (N'Vi Ti Ai'			,   10		);

	-- Add data TypeQuestion
INSERT INTO TypeQuestion	( TypeName) 
VALUES 						('Essay'			), 
							('Multiple-Choice'	); 

	-- Add data CategoryQuestion
INSERT INTO CategoryQuestion		(CategoryName)
VALUES 								('Java'),
									('SQL'	),
									('NET'	),
									('SQL'),
									('Postman'),
									('Ruby'	),
									('NET'	),
									('NET'	),
									('NET'	),
									('NET'	);
	
    -- Add data Question
INSERT INTO Question	(Content, CategoryID, TypeID, CreatorID	, CreateDate )
VALUES 					(N'Câu hỏi về Java Câu hỏi về Java Câu hỏi về Java Câu hỏi về Java'	,	1		,   1			,   2		,'2020-04-05'),
						(N'Câu Hỏi về PHP'	,	10		,   2			,   2		,'2020-04-05'),
						(N'Hỏi về C#'		,	9		,   2			,   3		,'2020-04-06'),
						(N'Hỏi về Ruby'		,	6		,   1			,   4		,'2020-04-06'),
						(N'Hỏi về Postman'	,	5		,   1			,   5		,'2020-04-06'),
						(N'Hỏi về ADO.NET'	,	3		,   2			,   6		,'2020-04-06'),
						(N'Hỏi về ASP.NET'	,	2		,   1			,   7		,'2020-04-06'),
						(N'Hỏi về C++'		,	8		,   1			,   8		,'2020-04-07'),
						(N'Hỏi về SQL'		,	4		,   2			,   9		,'2020-04-07'),
						(N'Hỏi về Python'	,	7		,   1			,   10		,'2020-04-07');
		
        -- Add data Answers
INSERT INTO Answer	(  Content		, QuestionID	, isCorrect	)
VALUES 				(N'Trả lời 01'	,   1			,	't'	),
					(N'Trả lời 02'	,   1			,	'f' ),
                    (N'Trả lời 03'	,   1			,	't'	),
                    (N'Trả lời 04'	,   1			,	'f'	),
                    (N'Trả lời 05'	,   2			,	't'	),
                    (N'Trả lời 06'	,   3			,	'f'	),
                    (N'Trả lời 07'	,   4			,	't'	),
                    (N'Trả lời 08'	,   8			,   'f'	),
                    (N'Trả lời 09'	,   9			,	'f'	),
                    (N'Trả lời 10'	,   10			,	'f'	);
                    
			-- Add data Exam
INSERT INTO Exam	(`Code`			, Tile					, CategoryID	, Duration	, CreatorID		, CreateDate )
VALUES 				('VTIQ001'		, N'Đề thi C#'			,	1			,	'60'		,   5			,'2019-04-05'),
					('VTIQ002'		, N'Đề thi PHP'			,	10			,	'60'	,   2			,'2019-04-05'),
                    ('VTIQ003'		, N'Đề thi C++'			,	9			,	'120'		,   2			,'2019-04-07'),
                    ('VTIQ004'		, N'Đề thi Java'		,	6			,	'60'	,   3			,'2020-04-08'),
                    ('VTIQ005'		, N'Đề thi Ruby'		,	5			,	'120'		,   4			,'2020-04-10'),
                    ('VTIQ006'		, N'Đề thi Postman'		,	3			,	'60'		,   6			,'2020-04-05'),
                    ('VTIQ007'		, N'Đề thi SQL'			,	2			,	'60'	,   7			,'2020-04-05'),
                    ('VTIQ008'		, N'Đề thi Python'		,	8			,	'60'	,   8			,'2020-04-07'),
                    ('VTIQ009'		, N'Đề thi ADO.NET'		,	4			,	'120'		,   9			,'2020-04-07'),
                    ('VTIQ010'		, N'Đề thi ASP.NET'		,	7			,	'60'	    ,   10			,'2020-04-08');
                    
	-- Add data ExamQuestion
INSERT INTO ExamQuestion(ExamID	, QuestionID	) 
VALUES 					(	1	,		5		),
						(	2	,		10		), 
						(	3	,		4		), 
						(	4	,		3		), 
						(	5	,		7		), 
						(	6	,		10		), 
						(	7	,		2		), 
						(	8	,		10		), 
						(	9	,		9		), 
						(	10	,		8		); 
