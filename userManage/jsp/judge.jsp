<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>select</title>
<style type="text/css">	
body{
		background: url("../images/shouye.jpg");
	}
</style>
</head>
<body>

	<%	
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		
		// 1 load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		// 2 get the database conncetion
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/t1", "root", "123");
		String sql = "select * from t1.um where username='"+username+"'";
		// 3 、创建一个statement对象，并且执行sql
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		boolean flag = rs.next();
		if(flag){			 
			 String tpassword = rs.getString("password");
			 if(tpassword.equals(password)){
				 session.setAttribute("ownname",username);
				 session.setAttribute("password",password);				 
				 response.setHeader("Refresh", "0;url=../index.jsp"); //刷新页面，0秒钟后跳到指定页面
				
				 
			 }else{%>
				<script>window.alert("密码输入错误")</script>
				<% response.setHeader("Refresh", "0;url=login.jsp"); //刷新页面，0秒钟后跳到指定页面 
			 } %>
			
		 <% }else{%>
			<script>window.alert("不存在该用户")</script>
		<% response.setHeader("Refresh", "0;url=login.jsp"); //刷新页面，0秒钟后跳到指定页面 
			 } 
		
		// 4、关闭数据库
		conn.close();
		%>
      
    </table>

</body>
</html>