<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>applicationScope.jsp(����)</title>
</head>
<body>
<h1>ī���� ����(�� �湮�� ��)</h1>
<jsp:useBean id="counter" class="mybean.scope.ApplicationBean" scope="application" > 
<jsp:setProperty property="newVisit" name="counter" value="1"/>
</jsp:useBean>
<jsp:setProperty property="restart" name="counter"/>

<h2>����� �� �������� 
<jsp:getProperty property="visitCount" name="counter"/>
��°�� �湮�ϼ̽��ϴ�.</h2>

<form action="applicationScope.jsp" method="post">
	<input type="submit" name="check" value="���� ��ħ" />
	&nbsp;&nbsp;&nbsp;
	<input type="submit" name="restart" value="ī���� 0���� ����" />
</form>
</body>
</html>






