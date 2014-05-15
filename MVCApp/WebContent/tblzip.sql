CREATE TABle tblZip
(
	zipcode		varchar2(10),
	sido		varchar2(10),
	gugun		varchar2(30),
	dong		varchar2(70),
	bunji		varchar2(30)


);	
drop table tblzip;
--SQL Loader(sqller.exe   D:\app\jhta\product\11.2.0\dbhome_1\BIN)로 외부데이터를 db로 
--controll file 작성(.ctl
load data
infile zipcode.csv
into table tblzip insert  --어느테이블에 넣을지
fields terminated by ','  -- ,로 구분
(zipcode, sido, gugun, dong, bunji)
--seq 빼고 나머지만 옮겨가기 위한것

--메모장에 저장
--sqlldr control=zipcode.ctl userid=scott/1111

select count(*) from tblzip
where dong like '%역삼%';
select dong from tblzip where dong like '%역삼%'
)