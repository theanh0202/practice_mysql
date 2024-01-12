-- BaiTap rap phim
-- Author: Tu Duc Phuong Nam

drop database if exists `he_thong_rap_phim`;
create database if not exists `he_thong_rap_phim`;
use `he_thong_rap_phim`;

create table `xuat_chieu`
(
	`xuat_chieu_id` int auto_increment primary key,
    `phim_id` nvarchar(50),
    `dao_dien_id` int,
    `the loai_phim_id` int,
    `ngay_khoi_chieu` date,
    `thoi_luong_phim` text,
    `ngon_ngu` text,
    `rated` text,
    `tom_tat` text,
    foreign key (`phim_id`) references `ten_phim` (`phim_id`),
    foreign key (`dao_dien_id`) references `dao_dien` (`dao_dien_id`),
    foreign key (`the_loai_phim_id`) references `the_loai_phim` (`the_loai_phim_id`)
);














