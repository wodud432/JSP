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


insert into tblproductinfo values(111, '10�̸�', 1000);
insert into tblproductinfo values(222, '10~20', 2000);
insert into tblproductinfo values(333, '20�̻�', 3000);


create table tblSangtae
(
	type2			number,
	type22			varchar2(50)

);
--Drop table tblSangtae;
--select * from scott.tblSangtae;

insert into tblSangTae values(11, '�ļ�');
insert into tblSangTae values(22, '��ǰ');
insert into tblSangTae values(33, '����');
insert into tblSangTae values(44, '�������');
insert into tblSangTae values(55, '�ļ�+��ǰ');
insert into tblSangTae values(66, '�ļ�+����');
insert into tblSangTae values(77, '�ļ�+�������');
insert into tblSangTae values(88, '�ļ�+��ǰ+����');
insert into tblSangTae values(99, '�ļ�+��ǰ+�������');
insert into tblSangTae values(100, '�ļ�+����+�������');
insert into tblSangTae values(101, '�ļ�+��ǰ+����+�������');
insert into tblSangTae values(102, '��ǰ+����');
insert into tblSangTae values(103, '��ǰ+�������');
insert into tblSangTae values(104, '��ǰ+����+�������');
insert into tblSangTae values(105, '����+�������');


create table tblJijumGubun
(
	gubun		number,
	jujumname	varchar2(20)

);
--select * from scott.tblJijumGubun;



insert into tblJijumGubun values(1, '�߾�������');
insert into tblJijumGubun values(2, '��������');




select * from scott.tblJijumGubun;


select tname from tab;














