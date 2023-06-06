create database demo1;
use demo1;

create table customer(
id int primary key auto_increment not null,
name varchar(50) not null,
address varchar(255) not null,
dateOfBirth varchar(50) not null,
gender bit not null,
phone varchar(20) not null,
email varchar(255) not null,
citizen_id varchar(255) not null
);

INSERT INTO `demo1`.`customer` (`id`, `name`, `address`, `dateOfBirth`, `gender`, `phone`, `email`, `citizen_id`) VALUES ('1', 'hoa', 'qn', '2000', 1, '75384538476', 'dfdikfnesg', '354657686');
INSERT INTO `demo1`.`customer` (`name`, `address`, `dateOfBirth`, `gender`, `phone`, `email`, `citizen_id`) VALUES ('hung', 'dn', '1998', 0,'6753745', 'dfsdvxfg','657687');
INSERT INTO `demo1`.`customer` (`name`, `address`, `dateOfBirth`, `gender`, `phone`, `email`, `citizen_id`) VALUES ('vu ', 'qn', '1998', 0, '465654', 'bcvhgfh', '65768');
INSERT INTO `demo1`.`customer` (`name`, `address`, `dateOfBirth`, `gender`, `phone`, `email`, `citizen_id`) VALUES ('huy', 'dn', '2001', 0, '46576', 'dgfh', '77989');

create table nhan_vien(
 ma_nhan_vien int auto_increment primary key,
 ten_nhan_vien varchar(45),
 dia_chi varchar(45),
 gioi_tinh bit,
 ngay_sinh varchar(20),
 sdt varchar(20), 
 email varchar(45),
 cccd varchar(20),
tai_khoan varchar(50),
mat_khau varchar(50)
);

INSERT INTO `demo1`.`nhan_vien` (`ten_nhan_vien`, `dia_chi`, `gioi_tinh`, `ngay_sinh`, `sdt`, `email`, `cccd`,`tai_khoan`, `mat_khau`) VALUES ('hoa', 'qn', 0, '2000', '09877665', 'hoa@gmail.com', '1234567','hoa', '123');
INSERT INTO `demo1`.`nhan_vien` (`ten_nhan_vien`, `dia_chi`, `gioi_tinh`, `ngay_sinh`, `sdt`, `email`, `cccd`,`tai_khoan`, `mat_khau`) VALUES ('hung', 'dn', 1, '1998', '098865432', 'hung@gmail.com', '56789','hung', '456');
INSERT INTO `demo1`.`nhan_vien` (`ten_nhan_vien`, `dia_chi`, `gioi_tinh`, `ngay_sinh`, `sdt`, `email`, `cccd`,`tai_khoan`, `mat_khau`) VALUES ('vu', 'qn', 1, '1998', '9834567', 'vu@gmai.com', '34567','vu', '789');
INSERT INTO `demo1`.`nhan_vien` (`ten_nhan_vien`, `dia_chi`, `gioi_tinh`, `ngay_sinh`, `sdt`, `email`, `cccd`,`tai_khoan`, `mat_khau`) VALUES ('huy', 'dn', 1, '2001', '675467', 'fhfjsdfh', '734637','huy', '1122');


