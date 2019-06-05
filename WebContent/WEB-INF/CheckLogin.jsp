<%@ page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta charset="UTF-8">
<title>登录判断</title>
</head>
<body> 
<%	
String username=new String(request.getParameter("UserName").getBytes("ISO-8859-1"),"utf-8");	
String password=new String(request.getParameter("PassWord").getBytes("ISO-8859-1"),"utf-8");	

//连接数据库操作	
String driverName="com.mysql.jdbc.Driver";	
String userName="root";	
String psw="123456";	
String dbName="test";	
String tableName="user_info";		
String url="jdbc:mysql://127.0.0.1:3306/test?serverTimezone=UTC";	
Class.forName("com.mysql.jdbc.Driver");	
out.println("tag 1");	
Connection conn=DriverManager.getConnection(url,userName,psw); ;		
if(conn!=null){				
	String sql="select * from user_info where name='"+username+"' and password='"+ password + "'";		
	out.println("sql="+sql);		
	Statement stmt=conn.createStatement();		
	ResultSet rs=stmt.executeQuery(sql);		
	if(rs.next()){			
		out.println("<script language='javascript'>alert('登录成功！')；</script>");			
		response.sendRedirect("Home.jsp");			//window.location.href='Home.jsp';		
		}		
	else{			 
		out.println("<script language='javascript'>alert('登录失败！');window.location.href='Login.jsp';</script>");			 //response.sendRedirect("Login.jsp");//密码不对返回到登陆		
		}	
	}	
else{		
	out.println("<script language='javascript'>alert('数据库连接失败！');</script>");		
	response.sendRedirect("Login.jsp");//密码不对返回到登陆	
	} 
%> 
	</body>
</html>
