<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	 body{
		background-color: #6495ED;
	}
</style>
</head>
<body>
	<%
	    String id = (String)request.getParameter("id");	
		String username = (String)request.getParameter("username");
		String ownname = (String)session.getAttribute("ownname");
		
		// 1 load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		// 2 get the database conncetion
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/t1", "root", "123");
		// String sql = "delete from t1.test where name='"+username+"'";
		String sql = "delete from t1.um where id='"+id+"'";
		// 3 、创建一个statement对象，并且执行sql
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		// 4、关闭数据库
		conn.close();
		if(ownname.equals(username)){%>			
			<script>window.alert("删除本登录用户，退出登录")</script>
			<% response.setHeader("Refresh", "0;url=login.jsp"); //刷新页面，0秒钟后跳到指定页面 
		 }else{				 
				response.setHeader("Refresh", "0;url=../index.jsp");			
		 }
		
		
		 %>
      
	
</body>
</html>