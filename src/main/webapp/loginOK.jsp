<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginOK.jsp</title>
</head>
<body>
	<%! String id, pw; %>
	
	<%
		request.setCharacterEncoding("EUC-KR");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		//아이디와 비밀번호가 맞으면 실행
		if(id.equals("abcde") && pw.equals("12345")){
			//세션에 id값을 저장
			session.setAttribute("id", id);
		}
		else
			response.sendRedirect("welcome.jsp");
	%>
</body>
</html>