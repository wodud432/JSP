<%@ page contentType="text/html; charset=EUC-KR"%>
<hr/>
[������]<br/>
<!-- bean�� ����� �����͸� ������ ��� -->
<jsp:useBean id="req" class="mybean.scope.RequestBean" scope="request"/>
<jsp:getProperty property="footer" name="req"/>
