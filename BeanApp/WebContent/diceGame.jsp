<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dice" class="mybean.DiceGame" scope="page"> 
	<jsp:setProperty property="minNumber" name="dice" value="1"/>
	<jsp:setProperty property="maxNumber" name="dice" value="6"/>
</jsp:useBean>

<h1>�ֻ��� ����</h1>
<h2>�ֻ����� ������<jsp:getProperty property="randomNumber" name="dice"/>  
�Դϴ�.</h2>

<form method="post" action="diceGame.jsp">
	<input type="submit" value="�ֻ��� �ٽ� ������" />
</form>
</body>
</html>


