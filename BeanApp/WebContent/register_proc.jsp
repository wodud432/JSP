<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="reg" class="mybean.RegisterBean" />
<jsp:setProperty property="*" name="reg" />

<h1>�Է� ���� Ȯ��</h1>
���̵� : <jsp:getProperty property="mem_id" name="reg"/><br/>
�н����� : <jsp:getProperty property="mem_pw" name="reg"/><br/>
�̸� : <jsp:getProperty property="mem_name" name="reg"/><br/>
�̸��� : <jsp:getProperty property="mem_email" name="reg"/><br/>
��ȭ��ȣ : <jsp:getProperty property="mem_tel" name="reg"/><br/>
�ּ� : <jsp:getProperty property="mem_addr" name="reg"/><br/>
</body>
</html>