Create table tblJIJUM
(
	
	jijumno		number,
	jijum		varchar2(20),
	gubun		number

);
--select * from scott.tblJIJUM;

Create table tblemp
(
	empno 		number,
	ename 		varchar2(20),
	phone		varchar2(30),
	email		varchar2(30),
	job			varchar2(30),
	ADDR		varchar2(100),
	hiredate	date,
	jijumno		number
	
	
);
--select * from scott.tblemp;

create table timetable
(
	jijum			varchar2(50),
	jijumno			number,
	chajong			varchar2(10),
	chabunho		varchar2(20),
	destination		varchar2(50),
	destinationNO	number,
	departure1		varchar2(20),
	arrival1		varchar2(20),
	departure2		varchar2(20),
	arrival2		varchar2(20),
	empno 		number
	

);
--select * from scott.timetable;

create table tblproduct
(
	songjang		number,
	balname			varchar2(10),
	baladdr			varchar2(100),
	suname			varchar2(10),
	suaddr			varchar2(100),
	type1			number,
	type2			number,
	jijumno			number,
	baldate			date
);
--select * from scott.tblproduct;


create table tblsearch
(
	songjang		number,
	jijumno			number,
	cartime			varchar2(30),
	producttime		varchar2(30),
	empno			number

);
--select * from scott.tblsearch;

create table tblproductInfo
(
	type1			number,
	weight			varchar2(20),
	danga			varchar2(20)
	
);
--select * from scott.tblproductInfo;


insert into tblproductinfo values(111, '10미만', 1000);
insert into tblproductinfo values(222, '10~20', 2000);
insert into tblproductinfo values(333, '20이상', 3000);


create table tblSangtae
(
	type2			number,
	type22			varchar2(50)

);
--Drop table tblSangtae;
--select * from scott.tblSangtae;

insert into tblSangTae values(11, '파손');
insert into tblSangTae values(22, '고가품');
insert into tblSangTae values(33, '부패');
insert into tblSangTae values(44, '빠른배송');
insert into tblSangTae values(55, '파손+고가품');
insert into tblSangTae values(66, '파손+부패');
insert into tblSangTae values(77, '파손+빠른배송');
insert into tblSangTae values(88, '파손+고가품+부패');
insert into tblSangTae values(99, '파손+고가품+빠른배송');
insert into tblSangTae values(100, '파손+부패+빠른배송');
insert into tblSangTae values(101, '파손+고가품+부패+빠른배송');
insert into tblSangTae values(102, '고가품+부패');
insert into tblSangTae values(103, '고가품+빠른배송');
insert into tblSangTae values(104, '고가품+부패+빠른배송');
insert into tblSangTae values(105, '부패+빠른배송');


create table tblJijumGubun
(
	gubun		number,
	jujumname	varchar2(20)

);
--select * from scott.tblJijumGubun;



insert into tblJijumGubun values(1, '중앙집하장');
insert into tblJijumGubun values(2, '물류센터');




select * from scott.tblJijumGubun;


select tname from tab;














