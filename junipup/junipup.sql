create table member(
nickname varchar2(30) primary key,
photo varchar2(50),
password varchar2(30),
name varchar2(30),
phoneNumber number,
email varchar2(60),
mrank number(2),
usePoint number,
maxPoint number,
regDate date,
loginDate date
);
--drop table member;
update member set regDate = '20150601' where nickname='master';
update attend set attend = '010101010101011' where nickname='master';
select * from attend;
delete from member where nickname = '이대주씨';
delete from member where nickname = '12321';
delete from member where nickname = 'admin';
delete from member where nickname = 'mdasd';
select * from (select rownum rn, a.* from (select * from DB
    	order by bnum desc) a)  where rn between 1 and 5 
select * from member;
drop table member;
insert into member values ('�씠二쇰��뵪', 'aa.jpg', '1', '�씠��二�', 10101010, 'dleown2420@naver.com', 9, 100, 100, sysdate, sysdate);
insert into member values ('juni', 'aa.jpg', '1', '二쇰땲', 10101010, 'junibatnipup@gmail.com', 9, 100, 100, sysdate, sysdate);
drop table member;
select * from member;
select * from jquery;
select * from java;

-- admin --
create table Admin(
nickname varchar2(30) primary key,
photo varchar2(50),
password varchar2(30),
name varchar2(30),
phoneNumber number,
email varchar2(60),
mrank number(2),
usePoint number,
maxPoint number,
regDate date,
loginDate date
);

select * from admin;

drop table admin cascade constraint;

insert into Admin values ('�씠二쇰��뵪', 'aa.jpg', '1', '�씠��二�', 10101010, 'dleown2420@naver.com', 9, 100, 100, sysdate, sysdate);
insert into Admin values ('juni', 'aa.jpg', '1', '二쇰땲', 10101010, 'junibatnipup@gmail.com', 9, 100, 100, sysdate, sysdate);
insert into Admin values ('amdin', 'aa.jpg', '1', '�씠��二�', 10101010, 'minibeat@naver.com', 9, 100, 100, sysdate, sysdate);
insert into Admin values ('master', 'aa.jpg', '1', '�젙湲곗쑄', 10101010, 'venus_@naver.com', 9, 100, 100, sysdate, sysdate);
-- message --
-- 蹂대궦�궗�엺怨� 諛쏅뒗�궗�엺 援щ텇�쓣 源뚮㉨�뿀�쓬  �땳�꽕�엫 �븯�굹 �뜑 異붽��븯硫� �셿猷�-- 
create table messaging(
mnum number(8) primary key,
nickname varchar2(30),
receiver varchar2(30),
title varchar2(300),
message varchar2(1200),
regdate date,
confirm number(2)
);

select * from messaging;

-- Email --
create table Email(
title varchar2(300) primary key,
content varchar2(4000),
recever varchar2(60),
filename varchar2(256),
category number(2),
regdate date
);

select * from email;



--android--
create table Android(
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
select * from ANDROID;
--drop table Android;

create table AndroidComment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(4000),
re_step varchar2(50),
re_level varchar2(50)
);

select * from androidcomment;
--DB
create table DB(
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
select * from db;

create table DBComment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(4000),
re_step varchar2(50),
re_level varchar2(50)
);


--java--
create table java(
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
create table javaComment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(4000),
re_step varchar2(50),
re_level varchar2(50)
);
--jsp--
create table Jsp(
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
select * from jsp where bnum = 4008;
select * from jsp;
create table JspComment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(4000),
re_step varchar2(50),
re_level varchar2(50)
);
--jQuery
create table jQuery(
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
select * from jQuery;
create table jQueryComment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(4000),
re_step varchar2(50),
re_level varchar2(50)
);

--html5
create table html5(
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

create table html5Comment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(4000),
re_step varchar2(50),
re_level varchar2(50)
);

create table notice(
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

create table qna(
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
category varchar2(100),
ref number,
ref_step number,
ref_level number
);

create table attend(
anum number primary key,
nickname varchar2(50),
year number,
month number,
currentDay number,
startDay number,
endDay number,
attend varchar2(50)
);

select * from attend;
select * from member;

insert into attend values (1 , 'master', 2015, 6, 1, 1, 30, '111111111111111111111111111111');
insert into attend values (2 , 'master', 2015, 7, 1, 1, 31, '1110001110001110');
insert into attend values (3 , 'master', 0, 0, 0, 0, 0 , '');
insert into attend values (2 , 'master', 2015, 7, 1, 1, 31, '1110001110001110');
insert into attend values (2 , 'master', 2015, 7, 1, 1, 31, '1110001110001110');
insert into attend values (2 , 'master', 2015, 7, 1, 1, 31, '1110001110001110');
update attend set attend = '0101010101010110' where nickname='pmh';
update attend set attend = '0101010101010110' where nickname='과천주니';
update member set maxpoint = '900' where nickname='master';
