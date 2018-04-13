<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update</title>
<style type="text/css">	
	body{
		background-color: #6495ED;
	}
	.update{
		
		width: 500px;
		height: 100px;
		margin: 0 auto;
	}
	.update > p{
		display:block;
		text-align: center;				
		font-size: 30px;
		line-height: 40px;
		
	}
	.fg{
		border-bottom: 2px dashed #EAEAEA;
	}
	.show{
		margin-top:50px;
	}
	.tab{
		border-collapse:collapse;
		width:500px;
		border:2px solid #EAEAEA;
		text-align:center;
		}		
	.tab > td{
		border:1px solid #EAEAEA;			
	}
</style>
</head>
<body>
	<div class="update">
		<p>修改账户信息</p>	
	</div>
	<div class="fg"></div>
	<div class="show">
	<%
		request.setCharacterEncoding("UTF-8");
	 	String id = (String)request.getParameter("id");
		String username = (String)request.getParameter("username");		
		String password = (String)request.getParameter("password");
		String age =(String)request.getParameter("age");		
		// 1 load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		// 2 get the database conncetion
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/t1", "root", "123");
		String sql = "update t1.um set username=?,password=?,age=? where id=?";
		// 3 、创建一个statement对象，并且执行sql
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		pstmt.setInt(3,Integer.parseInt(age));
		pstmt.setString(4,id);		
		int result = pstmt.executeUpdate();	
		String msg = "修改失败，点击确定跳转到主页";
		if(result!=0){
			msg="修改成功，点击确定跳转到主页";
		}
		pstmt.close();
		conn.close();
	%>
	<script>window.alert('<%=msg %>')</script>
	<%
		response.setHeader("Refresh", "0;url=../index.jsp");
	%>

</div>
</body>
</html>