
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입 확인</h1>
<form method="post" action="/MVCApp/front.action">
	<input type="hidden" name="cmd" value="REGCOMPLETE" />
	당신이 입력한 내용은 다음과 같습니다.<br/>
	<ul>
		<li>아이디 : </li>
		<li>이름 : </li>
		<li>주소 : </li>
	</ul>
	<input type="submit" value="가입 완료" />

</form>
</body>
</html>