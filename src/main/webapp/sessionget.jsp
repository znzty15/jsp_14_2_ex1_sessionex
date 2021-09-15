<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sessionget.jsp</title>
</head>
<body>
	<%
		//id�� ���� ��ü���·� ��ȯ
		Object obj1 = session.getAttribute("id");
		String id = obj1.toString();
		out.println(id + "<br>");
		//pw�� ���� ��ü���·� ��ȯ
		Object obj2 = session.getAttribute("pw");
		Integer pw = (Integer)obj2;
		out.println(pw + "<br>");
		
		out.println("<br>");
		
		String sName, sValue;
		//���Ǿȿ� �ִ� ��ü�� ��� ���� ��ü���·� ��ȯ
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			//���� ��ü�� �̸��� sName�� ����
			sName = enumeration1.nextElement().toString();
			//sName�� ���� sValue�� ����
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		out.println("<br>");
		//������ ���� ���̵�
		String sID = session.getId();
		out.println("session id : " + sID + "<br>");
		//������ ���� �ð�(�����ð��� ������ ������)
		int sInterval = session.getMaxInactiveInterval();
		out.println("session Interval : " + sInterval + "<br>");//�ʴ���
		
		out.println("<br>");
		
		out.println("==========���ݺ��� ������ �����ϰڽ��ϴ�=======<br>");
		//���� ���� ����
		//session.invalidate();
		//������ ���� ����
		//session.removeAttribute("id");
		
		if(request.isRequestedSessionIdValid()){
			out.println("������ ���� ����ֽ��ϴ�.<br>");
		}
		else {
			out.println("������ ���� �Ǿ����ϴ�.<br>");
		}
	%>
</body>
</html>