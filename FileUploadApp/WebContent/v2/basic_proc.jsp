
<%@ page  contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="basic" class="mybean.upload.basic.BasicBean" />


<%
basic.setPath(request, "upload"); //객체가 전달되는것이기 때문에 액션태그를 못쓴다
basic.setMax(5*1024*1024);  //액션태그 가능
basic.setEncType("euc-kr"); //액션태그 가능
basic.setMulti(request);

%>

사용자 : <jsp:getProperty property="user" name="basic"/><br/>
제목 : <jsp:getProperty property="title" name="basic"/> <br/>
파일 정보 : <br/>
<jsp:getProperty property="upFile" name="basic"/>