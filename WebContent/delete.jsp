<%@ page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"    
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<link rel="stylesheet" href="UI1.css">
<meta charset="UTF-8">
<title>登录判断</title>
</head>
<body1>
<%  
String username=new String(request.getParameter("UserName").getBytes("ISO-8859-1"),"utf-8");
try {  
    Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
    String url = "jdbc:mysql://localhost:3306/test?useSSL=false"; //数据库名
    String user = "root";  //数据库用户名
    String password = "123456";  //数据库用户密码
    Connection conn = DriverManager.getConnection(url, user, password);  //连接状态

    if(conn != null){               

        out.println(username); 
    	PreparedStatement pStmt = conn.prepareStatement("delete  from grade where name = '" + username + "'");  
    	pStmt.execute();  
    	pStmt = conn.prepareStatement("select * from grade where name = '" + username + "'"); 
    	out.println("删除成功！"); 
    	ResultSet rs = pStmt.executeQuery();  
        out.println("<table border='1' width='100%'>");
        out.println("<tr>");
        out.println("<th>学号</th>");
        out.println("<th>java</th>");
        out.println("<th>图形学</th>");
        out.println("<th>Web</th>");
        out.println("<th>人工智能</th>");
        while (rs.next()) {  
        	out.println("<tr><th>"+rs.getString("name")+"</th><th>"+rs.getInt("Java")+"</th><th>"+rs.getInt("Web")+"</th><th>"+rs.getInt("graph")+"</th><th>"+rs.getInt("ai")+"</th></tr>");
        }
}
    else{  
        out.print("连接失败！");  
    }  
}catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	           e.printStackTrace();
	       } catch (SQLException e) {
	            // TODO Auto-generated catch block
	           e.printStackTrace();
       } 
%>
</body1>
</html>