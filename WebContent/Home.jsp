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
<input class = "abc" type="button" value="录入成绩" onclick="window.location='insertUI.jsp'" />
<input class = "abc" type="button" value="查询成绩" onclick="window.location='showUI.jsp'" />
<input class = "abc" type="button" value="修改成绩" onclick="window.location='amentUI.jsp'" />
<input class = "abc" type="button" value="删除成绩" onclick="window.location='deleteUI.jsp'" />
</div>
</body1>
</html>