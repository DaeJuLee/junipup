create table memberJuni(
id varchar2(50) primary key,
password varchar2(50),
name varchar2(50),
phoneNumber varchar2(50),
email varchar2(50),
nickname varchar2(50),
mrank varchar2(50),
usepoint number,
maxpoint number
);

create table Android(
bnum number primary key,
nickname varchar2(50),
title varchar2(50),
mrank varchar2(50),
b_date Date,
content varchar2(3000),
ip varchar2(400),
hits varchar2(50),
filesize number,
filename varchar2(200),
category varchar2(2)
);

--drop table Android;

create table AndroidComment(
commentNum varchar2(50) primary key,
bnum varchar2(50),
nick varchar2(50),
c_date Date,
content varchar2(3000),
re_step varchar2(50),
re_level varchar2(50)
);

select * from board1;
