<%@ page contentType="text/html; charset=EUC-KR"%>
[�Ӹ���]<br/>
<!-- bean�� ����� �����͸� ������ ��� -->
<jsp:useBean id="req" class="mybean.scope.RequestBean" scope="request"/>
<jsp:getProperty property="header" name="req"/>
<hr/>