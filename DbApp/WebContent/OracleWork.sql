--oracle
drop table tblsawon;
CREATE TABLE tblSawon(
	no		number,
	id		varchar2(20),
	name	varchar2(20),
	pass	varchar2(10),
	age		number(2),
	addr	varchar2(50),
	ext		char(4),
	dept	varchar2(10),
	CONSTRAINT pk_no PRIMARY KEY(no)


);
/*
--mysql
CREATE TABLE tblSawon(
	no		int not null auto_increment,
	id		varchar(20),
	name	varchar(20),
	pass	varchar(10),
	age		int(2),
	addr	varchar(50),
	ext		char(4),
	dept	varchar(10),
	CONSTRAINT pk_no PRIMARY KEY(no)


);
*/

DROP SEQUENCE seq_no;
CREATE SEQUENCE seq_no;

INSERT INTO tblSawon values(seq_no.nextVal, 'hong', 'ȫ�浿', '1111', 20, '����	', '3431', '����');
INSERT INTO tblSawon values(seq_no.nextVal, 'lim', '�Ӳ���', '2222', 29, '����	', '3432', '����');
INSERT INTO tblSawon values(seq_no.nextVal, 'lee', '�̼���', '3333', 39, '�λ�	', '3433', '����');
INSERT INTO tblSawon values(seq_no.nextVal, 'shin', '�ŵ���', '4444', 36, '����	', '3434', '���');
INSERT INTO tblSawon values(seq_no.nextVal, 'jang', '�庸��', '5555', 35, '����	', '3435', '���');
INSERT INTO tblSawon values(seq_no.nextVal, 'ann', '��âȣ', '6666', 34, '���	', '3436', '��ȹ');
INSERT INTO tblSawon values(seq_no.nextVal, 'yun', '������', '7777', 25, '���	', '3437', '��ȹ');

select * from TBLSAWON;
