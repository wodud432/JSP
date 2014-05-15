
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script>
	function fndongCheck()
	{
		if(document.f.dong.value == "")
			{
				alert("반드시 동이름을 입력해야 합니다");
				document.f.dong.focus();
				return false;
			}
		
		document.f.submit();


	}

</script>
</head>
<body>
<h2>우편번호 찾기</h2>
<form method="post" action="/MVCApp/front.action" name="f"> 
	<input type="hidden" name="cmd" value="ZIPSEARCH" />
	<table>
		<tr>
			<td>동이름 입력 : <input type="text" name="dong"/>
				&nbsp;&nbsp;<input type="button" value="검색" onclick="fndongCheck()"/></td>
		</tr>
	
	</table>

</form>
</body>
</html>