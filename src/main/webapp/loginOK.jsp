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
		//���̵�� ��й�ȣ�� ������ ����
		if(id.equals("abcde") && pw.equals("12345")){
			//���ǿ� id���� ����
			session.setAttribute("id", id);
		}
		else
			response.sendRedirect("welcome.jsp");
	%>
</body>
</html>