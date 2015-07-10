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

select * from (select rownum rn, a.* from (select * from DB
    	order by bnum desc) a)  where rn between 1 and 5 
select * from member;
drop table member;
insert into member values ('이주대씨', 'aa.jpg', '1', '이대주', 10101010, 'dleown2420@naver.com', 9, 100, 100, sysdate, sysdate);
insert into member values ('juni', 'aa.jpg', '1', '주니', 10101010, 'junibatnipup@gmail.com', 9, 100, 100, sysdate, sysdate);
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

insert into Admin values ('이주대씨', 'aa.jpg', '1', '이대주', 10101010, 'dleown2420@naver.com', 9, 100, 100, sysdate, sysdate);
insert into Admin values ('juni', 'aa.jpg', '1', '주니', 10101010, 'junibatnipup@gmail.com', 9, 100, 100, sysdate, sysdate);
insert into Admin values ('amdin', 'aa.jpg', '1', '이대주', 10101010, 'minibeat@naver.com', 9, 100, 100, sysdate, sysdate);
insert into Admin values ('master', 'aa.jpg', '1', '정기윤', 10101010, 'venus_@naver.com', 9, 100, 100, sysdate, sysdate);
-- message --
-- 보낸사람과 받는사람 구분을 까먹었음  닉네임 하나 더 추가하면 완료-- 
create table messaging(
mnum number(8) primary key,
nickname varchar2(30),
title varchar2(300),
message varchar2(1200),
regdate date,
confirm number(2)
);

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

-- qna
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
category varchar2(100)
);

create table qnaComment(
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
