CREATE TABle tblZip
(
	zipcode		varchar2(10),
	sido		varchar2(10),
	gugun		varchar2(30),
	dong		varchar2(70),
	bunji		varchar2(30)


);	
drop table tblzip;
--SQL Loader(sqller.exe   D:\app\jhta\product\11.2.0\dbhome_1\BIN)�� �ܺε����͸� db�� 
--controll file �ۼ�(.ctl
load data
infile zipcode.csv
into table tblzip insert  --������̺� ������
fields terminated by ','  -- ,�� ����
(zipcode, sido, gugun, dong, bunji)
--seq ���� �������� �Űܰ��� ���Ѱ�

--�޸��忡 ����
--sqlldr control=zipcode.ctl userid=scott/1111

select count(*) from tblzip
where dong like '%����%';
select dong from tblzip where dong like '%����%'
)