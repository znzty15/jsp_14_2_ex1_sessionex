<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<%
		Enumeration enumeration = session.getAttributeNames();
		while(enumeration.hasMoreElements()){
		   
		   String sName = enumeration.nextElement().toString();
		   String sValue = session.getAttribute(sName).toString();
		   
		   if(sValue.equals("asdf")) {
		      out.println(sValue+"�� �α׾ƿ� �Ǿ����ϴ�.");
		      session.removeAttribute(sName);		      
	   		}	
	  	}
	%>
</body>
</html>