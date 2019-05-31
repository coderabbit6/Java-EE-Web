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
	String pwd = new String(request.getParameter("PassWord"));    
	Class.forName("com.mysql.jdbc.Driver");	
	String url = "jdbc:mysql://127.0.0.1:3306/test?serverTimezone=UTC";	
	String usename = "root";	
	String psw= "123456";     
	Connection conn = DriverManager.getConnection(url,usename,psw);//得到连接      
	out.println("<script language='javascript'>alert('数据库连接成功！');</script>");     
	PreparedStatement pStmt = conn.prepareStatement("select * from user_info where name = '" + user + "'");      
	ResultSet rs = pStmt.executeQuery();  				
	if(rs.next()){           
		out.println("<script language='javascript'>alert('该用户已存在，请重新注册！');window.location.href='register.jsp';</script>");      
		}	
	else{            
		PreparedStatement tmt = conn.prepareStatement("Insert into user_info(name,password) values('" + user + "','" + pwd + "')");            
		int rst = tmt.executeUpdate();            
		if (rst != 0){                  
			out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='Login.jsp';</script>");              
			}          
		else{                  
			out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='register.jsp';</script>");              
			}        
		}		
%>  
	
	</body>
</html>
