<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>welcome.jsp</title>
</head>
<body>
	<%
		Cookie[] ck = request.getCookies();
		for(int i=0; i<ck.length; i++){
			String id = ck[i].getValue();
			if(id.equals("abcde")) out.println(id + "�� �α��ο� �����ϼ̽��ϴ�.\n�ݰ����ϴ�.");
		}
	%>
	<a href="logout.jsp">�α׾ƿ�</a>
</body>
</html>