<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sql</title>
</head>
<body>
	<%
	String url="jdbc:mysql://localhost:3306/6cs2";
	String user="root",password="root";
	String emailID= request.getParameter("email");
	String pwd= request.getParameter("psw");
	String sql="insert into registration values('"+emailID+"','"+pwd+"')";
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, password);
		Statement smt=con.createStatement();
		if(smt.executeUpdate(sql)!=0){
			out.println("<h1>Registration Successfull!</h1>");
		}
		else
		{
			out.println("<h1>Registration Not Successfull!</h1>");
		}
		smt.close();
		con.close();
	}catch(Exception ex){
		out.println(ex);
	}
	%>
</body>
</html>