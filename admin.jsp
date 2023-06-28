<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 
		String user= request.getParameter("uname");
		String pwd=request.getParameter("psw");
		if(user.equalsIgnoreCase("admin") && pwd.equals("admin"))
			response.sendRedirect("welcome.jsp");
		else 
			response.sendRedirect("error.jsp");
	%>
</body>
</html>