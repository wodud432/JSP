
<%@ page contentType="text/html; charset=EUC-KR" %> 
<%@ page buffer="1kb" autoFlush="true" %> 출력내용을 8kb로 제한하겠다<!-- flush 버퍼가 다 차지않아도 강제로 버퍼를 비우는것   -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=0; i<1500; i++)
	{
		out.println(i);
		
	}

%>

</body>
</html>