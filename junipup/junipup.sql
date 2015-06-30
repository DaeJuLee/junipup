create table member(
nickname varchar2(30) primary key,
photo varchar2(50),
id varchar2(30),
password varchar2(30),
name varchar2(30),
phoneNumber number,
mrank number(2),
usePoint number,
maxPoint number,
regDate date,
loginDate date
); 
insert into member (nickname, id) values ('master', 'master');
select * from member where id='master';
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