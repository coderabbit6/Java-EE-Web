<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="UI1.css"> 
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="test1.js"></script>
<title>Insert title here</title>
</head>
<body1>
<div id="home">
<form action="Insert.jsp" method="post">

                <p>学号：<input class="inputinfo1"  type="text" name="UserName" placeholder="请输入你的名字">  </p>
                Java：<input class="inputinfo1"  type="text" name="java" >  
                                                        图形学：<input class="inputinfo1"  type="text" name="graph" > 
                Web：<input class="inputinfo1"  type="text" name="Web" >
                                                       人工智能：<input class="inputinfo1"  type="text" name="ai" > 
				<input type="submit" id="putin" class="lll" value = "提交">

</form>


<form action = "select.jsp" method="post">

<p>学号：<input class="inputinfo1"  type="text" name="UserName" placeholder="请输入你的名字">  </p>
<input type="submit" id="putin" class="lll" value = "查询">
</form>


</div>


</body1>
</html>