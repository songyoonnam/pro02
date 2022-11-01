create database myshop;
commit;
use myshop;

create table custom(cusId varchar(20) primary key, cusPw varchar(200) not null, cusName varchar(20) not null, address varchar(60) not null, tel varchar(15) not null, regdate datetime(25) default now(), point int(20) default 0, level int(10) default 0, visited int(20) default 0);

create table notice (notiNo int primary key auto_increment, title varchar(100) not null, content varchar(600) not null, author varchar(30) not null, resdate datetime default now());

insert into notice(title, content, author) values(title1, content1, 관리자);
insert into notice(title, content, author) values(title2, content2, 관리자);
insert into notice(title, content, author) values(title3, content3, 관리자);

commit;

select * from notice order by notiNo desc;

