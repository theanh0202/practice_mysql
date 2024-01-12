DROP DATABASE IF EXISTS HE_THONG_RAP_PHIM;
CREATE DATABASE HE_THONG_RAP_PHIM;
USE HE_THONG_RAP_PHIM;

-- nhanvien (TheAnh)
-- ghe (Minh)
-- phongchieu (Hai) 
-- khachhang (Hieu)
-- ve (Khanh)
-- theloaiphim (Van)
-- phim (Nguyet)
-- chamcong (Nam)
-- loaighe (Vu)
-- dichvu (Luc)
-- suatchieu (NamTu)
-- rap (Huy)
-- hoadon (Tung)

CREATE TABLE `nhan_vien` (
    ma_nhan_vien INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    ten VARCHAR(50) not null,
    ngay_sinh DATE,
    que_quan VARCHAR(100),
    sdt char(20) unique key,
    cong_viec ENUM('banve', 'quanly', 'dondep', 'letan'),
    luong mediumint
);

create table `rap`
(
id int unsigned,
`name` varchar(50),
diachi varchar(100),
phone_number int,
email varchar(50)
);

create table phongchieu(
ID_phong tinyint unsigned primary key auto_increment,
tenphong nvarchar(20),
rapID int not null,
foreign key(rapID) references Rap(id)
);

create table `loai_ghe`(
	loai_ghe_id mediumint unsigned primary key auto_increment,
    ten_loai_ghe varchar(10)
);

create table `ghe` (
ma_ghe int,
day_ghe char(1),
so_ghe char(2),
loai_ghe mediumint unsigned,
ma_phong_chieu tinyint,
foreign key (ma_phong_chieu) references phongchieu(ID_phong),
foreign key (loai_ghe) references loai_ghe(loai_ghe_id)
);

create table khachhang (
ma_khach_hang int,
email varchar(50),
sdt char(20)
);

 create table Theloaiphim
 (
`theloai_id` tinyint primary key auto_increment,
`ten` varchar(50) not null,
`mota` text,
AGE INT
);

-- B?ng: Phim
create table Phim (
	Phim_ID int auto_increment primary key,
    Ten_phim nvarchar(100) not null,
    the_loai_id tinyint,
    dao_dien nvarchar(50),
    namsx date,
    quoc_gia varchar(20),
    noi_dung text,
    thoi_luong TINYINT,
    foreign key (the_loai_id) references Theloaiphim(theloai_id)
);	

CREATE TABLE `xuat_chieu` (
    `xuat_chieu_id` INT AUTO_INCREMENT PRIMARY KEY,
    `phim_id` NVARCHAR(50),
    `gio_chieu` DATETIME,
    `ngon_ngu` varchar(50),
    FOREIGN KEY (`phim_id`)
        REFERENCES `phim` (`phim_id`)
);

create table `chamcong`
(
	cham_cong_id int,
	IDnhanvien int UNSIGNED,
    gio_vao DATETIME,
    gio_ra DATETIME,
    foreign key (IDnhanvien) references nhan_vien(ma_nhan_vien)
);

CREATE TABLE DICH_VU
(
ID  			INT AUTO_INCREMENT PRIMARY KEY,
TEN_DICH_VU		NVARCHAR(50),
RAP				INT,
GIA_THANH 		INT,
foreign key (RAP) references RAP (id)
);

CREATE TABLE hoa_don_dich_vu (
    ma_hoa_don VARCHAR(50) PRIMARY KEY,
    ma_dich_vu INT,
    ma_nhan_vien INT,
    ngay_lap DATETIME default(current_time()),
    so_luong TINYINT UNSIGNED,
    tong_tien NVARCHAR(50),
    FOREIGN KEY (ma_dich_vu)
        REFERENCES DICH_VU (ID),
    FOREIGN KEY (ma_nhan_vien)
        REFERENCES nhan_vien(ma_nhan_vien)
);

CREATE TABLE VE (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    `CODE` CHAR(10),
    `TIME` DATETIME DEFAULT NOW(),
	PRICE ENUM('90.000','180,000'),
    suat_chieu_id int,
    khach_hang_id int,
    MA_GHE INT,
    HANG CHAR(10),
    ma_nhan_vien int UNSIGNED,
    THUE ENUM ('5%','10%') DEFAULT('5%'),
    foreign key (suat_chieu_id) references xuat_chieu(xuat_chieu_id),
    foreign key (khach_hang_id) references khachhang(ma_khach_hang),
    foreign key (MA_GHE) references ghe(ma_ghe),
    foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien)
);