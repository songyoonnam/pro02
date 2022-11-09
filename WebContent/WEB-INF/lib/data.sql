create database myshop;
commit;
use myshop;

create table custom(
	cusId varchar(13) primary key,	
	cusPw varchar(200) not null,
	cusName varchar(50) not null,
	address varchar(500) not null,
	tel varchar(14) not null,
	regDate datetime default now(),
	point int default 0,
	level int default 0,
	visited int default 0
);

create table notice (notiNo int primary key auto_increment, title varchar(100) not null, content varchar(600) not null, author varchar(30) not null, resdate datetime default now());

insert into notice(title, content, author) values(title1, content1, 관리자);
insert into notice(title, content, author) values(title2, content2, 관리자);
insert into notice(title, content, author) values(title3, content3, 관리자);

insert into notice values(title3, content3, 관리자);

commit;

select * from notice order by notiNo desc;

alter table notice add visited int;

select * from notice;

update custom set level=9 where cusid="admin";

create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

insert into category(cateName) values ("Best");
insert into category(cateName) values ("Perfume");
insert into category(cateName) values ("Candle");
insert into category(cateName) values ("Object");
insert into category(cateName) values ("Shop");

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);
alter table product add column scnt int default 0; 
alter table product add column regdate datetime default now();

select * from product;

create table wearing(
	proNo int primary key,
    amount int
);

select * from wearing;
create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(13) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);

create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);

create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0
);    
alter table parsel add column baleCode varchar(24); 

create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(13)
);

create table qnaa(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default now(),
    lev int default 0,            -- 깊이
    parno int not null,          -- 부모글 번호
    sec char(1)                     -- 비밀글 여부
);

insert into qnaa(title, content, author, lev, parno, sec)  values ("문의1", "문의", "test1test1", 0, 1, "N");
alter table qnaa add column visited int default 0; 
alter table qnaa modify column parno int default 1;
update product set propic=propic2 where prono<=19;
delete from product where prono>=17;
select * from product;
select a.prono, b.amount, a.cateno, a.proname, a.prospec, a.oriprice, a.discountrate, a.propic, a.propic2 from product a inner join wearing b on a.prono=b.prono where a.prono=3;
commit;