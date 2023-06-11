create database ban_heo;
use ban_heo;


create table xuat_xu (
ma_xuat_xu int auto_increment primary key,
ten_xuat_xu varchar(45)
);
insert into xuat_xu(ten_xuat_xu)
value("Việt Nam"),
("Mỹ");

create table heo(
ma_so_heo varchar(20)  primary key,
nhap_chuong varchar(45),
trong_luong int,
xuat_chuong varchar(45),
trong_luong_xuat_chuong int,
ma_xuat_xu int,
foreign key(ma_xuat_xu) references xuat_xu(ma_xuat_xu)
);
insert into heo(ma_so_heo,nhap_chuong,trong_luong,xuat_chuong,trong_luong_xuat_chuong,ma_xuat_xu)
value("MH-001",'2022-12-04',10,'2023-06-06',70,1);
select * from heo;
