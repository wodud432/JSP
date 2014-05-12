
<%@ page contentType="text/html; charset=EUC-KR" isErrorPage="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<h1>연산을 잘못 하셨습니다(0으로 나눔)</h1>
<%= exception.getMessage() %>  <!-- 실제 정확한 에러에대한 메세지를 출력 받아볼 수 있다 exception을 쓰려면 isErrorPage로 해줘야댐 -->
</body>
</html>