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
		//id의 값을 객체형태로 반환
		Object obj1 = session.getAttribute("id");
		String id = obj1.toString();
		out.println(id + "<br>");
		//pw의 값을 객체형태로 변환
		Object obj2 = session.getAttribute("pw");
		Integer pw = (Integer)obj2;
		out.println(pw + "<br>");
		
		out.println("<br>");
		
		String sName, sValue;
		//세션안에 있는 객체의 모든 값을 객체형태로 변환
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			//세션 객체의 이름을 sName에 저장
			sName = enumeration1.nextElement().toString();
			//sName의 값을 sValue에 저장
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		out.println("<br>");
		//세션의 고유 아이디
		String sID = session.getId();
		out.println("session id : " + sID + "<br>");
		//세션의 유지 시간(유지시간이 지나면 없어짐)
		int sInterval = session.getMaxInactiveInterval();
		out.println("session Interval : " + sInterval + "<br>");//초단위
		
		out.println("<br>");
		
		out.println("==========지금부터 세션을 삭제하겠습니다=======<br>");
		//세션 전부 삭제
		//session.invalidate();
		//지정된 값만 삭제
		//session.removeAttribute("id");
		
		if(request.isRequestedSessionIdValid()){
			out.println("세션이 아직 살아있습니다.<br>");
		}
		else {
			out.println("세션이 삭제 되었습니다.<br>");
		}
	%>
</body>
</html>