<%@page import="java.util.List"%>
<%@page import="mybean.index.CarDto"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>parking.jsp</title>
</head>
<body>
<jsp:useBean id="car" class="mybean.index.CarDto" /> 
<jsp:useBean id="parking" class="mybean.index.ParkingBean" scope="application"/>

<jsp:setProperty property="enter" name="parking" param="enter"/>
<jsp:setProperty property="exit" name="parking"/>

<h1>���� ���� ���α׷�</h1>
<form action="parking.jsp" method="post">
	�����忡 ���� �� ��ȣ : <input type="text" name="enter" />
	&nbsp;&nbsp;&nbsp;
	<input type="submit" value="����" />
</form>

<form action="parking.jsp" method="post">
	�����忡�� ���� �� ��ȣ : <input type="text" name="exit" />
	&nbsp;&nbsp;&nbsp;
	<input type="submit" value="����" />
</form>
<hr/>
������ ���� ��� :<br/>
<table border="1">
	<tr>
		<th>���� ��ȣ</th><th>���� �ð�</th>
	</tr>
<%
	/*
	CarDto[] cars = parking.getCarDto(); 
	for(int i=0; i<cars.length; i++){
		car = cars[i];
		//pageContext.setAttribute("car", cars[i]);
	*/
	
	List cars = parking.getCarDto();
	for(int i=0; i<cars.size(); i++){
		CarDto dto = (CarDto)cars.get(i);
		pageContext.setAttribute("car", dto);
%>
	<tr>
		<td><jsp:getProperty property="plateNumber" name="car"/></td>
		<td><jsp:getProperty property="parkingTime" name="car"/></td>
	</tr>
<%
	}
%>
</table>
<br/>
�� ������� : <jsp:getProperty property="total" name="parking"/>��
</body>
</html>
<!-- 
	class name : mybean.index.CarDto
	name			r/w			data type
	--------------------------------------
	plateNumber		r			String
	parkingTime		r			java.util.Date
	
	class name : mybean.index.ParkingBean
	name			r/w			data type
	--------------------------------------
	enter			w			String
	exit			w			String
	total			r			int
	carDto			r			CarDto, carDto[]
 -->