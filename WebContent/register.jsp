<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="UI1.css"> 
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="test1.js"></script>
<title>Register</title>
</head>
<body>

<div id="login_register">
<form class="form-horizontal" role="form" action="register_check.jsp" accept-charset="UTF-8" method="post" onsubmit="return validate()">
                <p><input class="inputinfo" type="text" name="UserName" placeholder="请输入用户名"></p>            
				<p><input class="inputinfo" type="password" name="PassWord" placeholder="请输入密码"></p>
				<p><input class="inputinfo" type="password" name="PassWord1" placeholder="请再次输入密码"></p>

<input type = "submit" id="register1" class="lr" value = "注册">
<form>
</div>

</body>
</html>