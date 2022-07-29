--show databases;
--create database lakshay_db;
--use lakshay_db; 
--show tables;

create table student(
st_id int,
st_name varchar(50),
st_email varchar(50),
st_password varchar(50)
);
create table instructor(
in_id int,
in_name varchar(50),
in_email varchar(50),
in_password varchar(50),
in_qualification varchar(50),
in_studentcount int,
in_coursecount int
);
-- drop table enrollment;
create table enrollment(
st_email varchar(50),
c_id int
);

create table course(
c_id int,
title varchar(100),
brief varchar(500),
fees int,
video_name varchar(200),
in_id int
);

show tables;
-- select * from student;
alter table student add constraint pk_student primary key (st_id);
-- select * from instructor;
alter table instructor add constraint pk_instructor primary key (in_id);

-- select * from course;
alter table course add constraint pk_course primary key (c_id);
-- select * from instructor;
-- select * from student;
-- select * from course;

-- select * from enrollment;

-- insert into enrollment (st_email,c_id) values ('123@gmail.com',1);
-- insert into course (c_id,title,brief,fees,video_name,in_id) values
-- (3,'course3','learn about Computer Networks',400,'3.mp4',1);
-- SET SQL_SAFE_UPDATES=0;
-- delete from enrollment WHERE st_email='abc@gmail.com' and c_id=2;
insert into student (st_id,st_name,st_email,st_password) values (1,"abc","abc@gmail.com","abcde");
insert into instructor (in_id,in_name,in_email,in_password,in_qualification,in_studentcount,in_coursecount) values (1,"xyz","xyz@gmail.com","xyzde","B.tech.",0,0);
insert into course (c_id,title,brief,fees,video_name,in_id) values (1,"computer networks","learn networking",500,"1.mp4",1);
