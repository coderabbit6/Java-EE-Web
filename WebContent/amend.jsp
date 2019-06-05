<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册判断</title>
</head>
<body> 
<%
	String user = new String(request.getParameter("UserName"));
    String javag = new String(request.getParameter("java"));
    String graphg = new String(request.getParameter("graph"));
    String Webg = new String(request.getParameter("Web"));
    String aig = new String(request.getParameter("ai"));
	Class.forName("com.mysql.jdbc.Driver");	
	String url = "jdbc:mysql://127.0.0.1:3306/test?serverTimezone=UTC";	
	String usename = "root";	
	String psw= "123456";     
	Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接      
	out.println("<script language='javascript'>alert('数据库连接成功！');</script>");     
	PreparedStatement pStmt = conn.prepareStatement("select * from grade where name = '" + user + "'");      
	ResultSet rs = pStmt.executeQuery();  				          
	PreparedStatement tmt = conn.prepareStatement("update grade set Java = '" + javag + "'"+",Web = '" + Webg + "'"+",graph = '" + graphg + "'"+",ai = '" + aig + "'"+"Where name = '" + user + "'");            
		int rst = tmt.executeUpdate();            
		if (rst != 0){                  
			out.println("<script language='javascript'>alert('修改成绩成功！');window.location.href='Home.jsp';</script>");              
			}          
		else{                  
			out.println("<script language='javascript'>alert('失败');window.location.href='Home.jsp';</script>");              
			}        		
%>  
</body>
</html>
</body>
</html>