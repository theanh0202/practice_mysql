DROP DATABASE He_thong_rap_chieu_phim ;
CREATE DATABASE He_thong_rap_chieu_phim ;
use He_thong_rap_chieu_phim ;

CREATE TABLE DICH_VU
(
ID  		INT AUTO_INCREMENT PRIMARY KEY  ,
DO_AN 	 		ENUM ( 'BONG_NGO', 'KHOAI TAY CHIEN') ,
NUOC			ENUM ('COCACOLA' , 'PEPSI'),
VE 				INT ,
RAP				INT,
SUAT_CHIEU		INT,
HOA_DON 		INT,
foreign key (VE) references VE (id),
foreign key (RAP) references RAP (id),
foreign key (SUAT_CHIEU) references SUAT_CHIEU (id),
foreign key (HOA_DON) references HOA_DON (id)
);


DO AN 