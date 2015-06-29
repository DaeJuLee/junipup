create table member (
	nickname varchar2(30) primary key,
	photo varchar2(50),
	id varchar2(12),
	password varchar2(20),
	name varchar2(15),
	phoneNumber number(15),
	email varchar2(30),
	mrank number(2),
	usePoint number(7),
	maxPoint number(7),
	regDate date,
	loginDate date
);
-- 랭크는 낮은 숫자가 높은등급으로
insert into member values('juni', 'aa.jgp', 'juni', 'juni', 'juni', 01000000000, 'juni@juni.com', 9, 100, 100, sysdate, sysdate);
insert into member values('admin', 'aa.jgp', 'admin', 'admin', 'admin', 01000001111, 'admini@juni.com', 1, 1000000, 1000000, sysdate, sysdate);
insert into member values('leejuni', 'aa.jgp', 'juni', 'juni', 'juni', 01000000000, 'juni@juni.com', 9, 100, 100, sysdate, sysdate);

drop table member;
drop table member cascade CONSTRAINTS;
select * from member;

create table rank (
	mrank varchar2(24),
	maxPoint number(7)
);


create table DB (
	bnum number primary key,
nickname varchar2(50),
title varchar2(50),
mrank varchar2(50),
b_date Date,
content varchar2(4000),
ip varchar2(400),
hits varchar2(50),
filesize number,
filename varchar2(200),
category varchar2(100)
);
drop table DB;
create table DBcomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);
select * from db;
insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '1');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '1');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '1');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '1');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '1');


create table java (
	bnum number primary key,
nickname varchar2(50),
title varchar2(50),
mrank varchar2(50),
b_date Date,
content varchar2(4000),
ip varchar2(400),
hits varchar2(50),
filesize number,
filename varchar2(200),
category varchar2(100)
);
select * from java;
create table javacomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '2');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '2');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '2');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '2');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '2');

create table html5 (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2)
);
create table html5comment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '3');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '3');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '3');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '3');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '3');

create table jquery (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2)
);
create table jquerycomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '4');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '4');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '4');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '4');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '4');

create table jsp (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2)
);
create table jspcomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '5');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '5');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '5');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '5');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '5');

create table spring (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2)
);
create table springcomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '6');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '6');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '6');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '6');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '6');

create table android (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2)
);
create table androidcomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '7');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '7');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '7');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '7');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '7');

create table freeboard (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2)
);
create table freeboardcomment (
	commentNum number(6) primary key, 
	bnum number(8),
	nickname varchar2(30),
	c_date date,
	content varchar2(900),
	re_step number(2),
	re_level number(2)
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '0');
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '0');
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '0');
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '0');
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '0');



create table qna (
	bnum number(8) primary key,
	nickname varchar2(30),
	title varchar2(150),
	mrank varchar2(24),
	b_date date,
	content varchar2(4000),
	ip varchar2(20),
	hits number(6),
	filesize varchar(20),
	filename varchar2(50),
	category number(2).
	ref number(2),
	re_step number(2),
	re_level number(2)
	-- 카테고리 1.oracle 2.java 3.html5 4.jquery 5.jsp 6.spring 7.android
);

insert into oracledb values(1, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '1',0,0,0);
insert into oracledb values(2, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '2',0,0,0);
insert into oracledb values(3, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '3',0,0,0);
insert into oracledb values(4, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '4',0,0,0);
insert into oracledb values(5, 'juni', 'title1', 9, sysdate, '원빈', '255.255.255.255', 0, '20000', 'aa.jpg', '5',0,0,0);