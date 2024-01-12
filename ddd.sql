drop database if exists `qlsv`;
create database `qlsv`;
use `qlsv`;
drop table if exists `sinhvien`;
CREATE TABLE sinhvien (
    id INT PRIMARY KEY,
    HoTen NVARCHAR(100),
    lop NVARCHAR(50),
    Tuoi INT,
    GioiTinh BOOL
);
INSERT INTO sinhvien (id, HoTen, lop, Tuoi, GioiTinh)
VALUES
    (1, N'Nguyễn Văn A', N'Lớp A1', 20,TRUE),
    (2, N'Nguyễn Thị B', N'Lớp B2', 21, TRUE),
    (3, N'Trần Văn C', N'Lớp C3', 22,TRUE),
    (4, N'Phạm Thị D', N'Lớp D4', 19,TRUE),
    (5, N'Phạm ee D', N'Lớp D4', 19,TRUE);

