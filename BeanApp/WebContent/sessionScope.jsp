<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<h1>������ �̿��� Ÿ�̸� ����</h1>
<jsp:useBean id="timer" class="mybean.scope.SessionBean" scope="session"> 
	���� �����Դϴ�. Ÿ�̸� �۵��� �����մϴ�.
</jsp:useBean>
<br/><br/>

bean�� property�� ���������� ������ �ڿ� ����� �ð���
<jsp:getProperty property="elapsedTimeAfterLastAccess" name="timer"/>
�� �Դϴ�.<br/><br/>

<jsp:setProperty property="restart" name="timer" param="restart"/>

Ÿ�̸� ������ �ڿ� ����� �ð���
<jsp:getProperty property="elapsedTime" name="timer"/><br/><br/>

Ÿ�̸Ӱ� ���۵� �ڿ� ����� �ð���
<jsp:getProperty property="elapsedTimeAfterInst" name="timer"/>
�� �Դϴ�.<br/><br/>

<form action="sessionScope.jsp" method="post">
	<input type="submit" name="check" value="����ð� Ȯ��" />
	&nbsp;&nbsp;&nbsp;
	<input type="submit" name="restart" value="Ÿ�̸� ����" />
</form>
</body>
</html>
<!-- 
	name						r/w		data type		desc
	------------------------------------------------------------------
	elapsedTime					r		long		Ÿ�̸� ���� �� ��� �ð�
	restart						w		boolean		Ÿ�̸� ����
	elapsedTimeAfterInst		r		long		��ü ���� �� ����ð�
	elapsedTimeAfterLastAccess	r		long		������ ���� �� ����ð�
 -->





