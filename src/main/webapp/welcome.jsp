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
			if(id.equals("abcde")) out.println(id + "님 로그인에 성공하셨습니다.\n반갑습니다.");
		}
	%>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>