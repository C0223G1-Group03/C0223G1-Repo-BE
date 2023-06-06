create database demo1;
use demo1;

create table users(
id int auto_increment primary key,
tai_khoan varchar(250),
mat_khau varchar(250)
);

insert into users(tai_khoan,mat_khau)
value("vu","123");