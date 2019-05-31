<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<title>通过JSP打开数据表</title>
</head>
<body>

 <%  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/test?useSSL=false"; //数据库名
            String username = "root";  //数据库用户名
            String password = "123456";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                out.print("数据库连接成功！");  
                out.print("<br />");            
                Statement stmt = null;  
                ResultSet rs = null;  
                stmt = conn.createStatement();
                
                String sql = "SELECT id, name, url FROM websites;";  //查询语句

                
                rs = stmt.executeQuery(sql);
 
                out.print("查询结果：");  
                out.print("<br />");  
                out.println("姓名"+"  "+"性别 "+"  "+"年龄");  
                out.print("<br />");  
                while (rs.next()) {  
                out.println(rs.getInt("id")+"  &nbsp "+rs.getString("name")+"  &nbsp "+rs.getString("url") +" \n "); //将查询结果输出  
                                  }  
                
                
            }
            else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            out.print("数据库连接异常！");  
        }  
%>   
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/RUNOOB?useUnicode=true&characterEncoding=utf-8"
     user="root"  password="123456"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from websites;
</sql:query>
<h1>JSP 数据库实例 - 菜鸟教程</h1>
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>站点名</th>
   <th>站点地址</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.url}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>
