<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<link rel="stylesheet" href="UI1.css"> 
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="test1.js"></script>
<title>首页</title>
</head>
<body>

<div id="login_register">
<form action="CheckLogin.jsp" method="post" name="frmLogin">
                <p><input class="inputinfo" id ="123" type="text" name="UserName" placeholder="请输入用户名"></p>            
				<p><input class="inputinfo" type="password" name="PassWord" placeholder="请输入密码"></p>


	<input type="submit" id="login1" class="lr" value = "登录"">
	<button id="register" class="lr">注册</button>
</form>

</div>

</body>
</html>