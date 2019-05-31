$(document).ready(function(){
	$("#register").click(function(){
		//window.open('register.jsp');
		window.location.href = 'register.jsp'
	});
	$("#login").click(function(){
		var username = $("input[name ='UserName']").val();
		var password = $("input[name ='PassWord']").val();
		if(username==""||username=="请输入用户名") alert("请输入用户名!");return false;
		if(passward==""||passward=="请输入密码") alert("请输入密码！");return false;
	});
	
	$("#register1").click(function addCheck(){
		var username = $("input[name ='UserName']").val();
		var password = $("input[name ='PassWord']").val();
		var password1 = $("input[name ='PassWord1']").val();
		if (username == "") {			
			alert("用户名不能为空!");
			return false;
			
		}		
		if (password == "") {
			alert("密码不能为空!");						
			return false;		
		}		
		if (password != password1) {			
			alert("两次输入密码不相同!");					
			return false;		
		}

	});
	function validate() {
		var flag = addCheck();

		if (flag == false)

			return false;

		return true;

	}
	
	$("#login1").click(function(){
		alert("登录成功");
	});
	
	
	$("#putin").click(function(){
		Class.forName("com.mysql.jdbc.Driver");	
		var url = "jdbc:mysql://127.0.0.1:3306/test?serverTimezone=UTC";	
		var usename = "root";	
		var psw= "123456";     
		var conn = DriverManager.getConnection(url,usename,psw);//得到连接      
		out.println("<script language='javascript'>alert('数据库连接成功！');</script>");     
		var pStmt = conn.prepareStatement("select * from user_info where name = '" + user + "'");      
		var rs = pStmt.executeQuery();
	});
	
	
	
});