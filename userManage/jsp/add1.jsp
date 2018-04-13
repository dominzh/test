<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add</title>
<style type="text/css">	
	body{
		background-color: #6495ED;
	}
	.add{
		
		width: 500px;
		height: 100px;
		margin: 50px auto;
	}
	.add > p{
		text-align: center;
		font-size: 30px;
	}
	.fg{
		border-bottom: 2px dashed #EAEAEA;
	}
	.show{
		margin-top:50px;
	}
	.show > p{
		text-align: center;
		font-size: 25px;
	}
	.tab{
		border-collapse:collapse;
		width:500px;
		border:2px solid #EAEAEA;
		text-align:center;
		}
		
	.tab td{
		border:2px solid #EAEAEA;		
	}
	
</style>
<script language="javascript">

</script>
</head>
<body>
<div class="add">
	<p>添加账户信息</p>	
</div>
<div class="fg"></div>
<div class="show" >	
		<%
		request.setCharacterEncoding("UTF-8");	
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		int age = Integer.parseInt(request.getParameter("age"));		
		// 1 load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		// 2 get the database conncetion
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/t1", "root", "123");
  		Statement stmt = conn.createStatement();
		String sql = "insert into t1.um values(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, username);
		pstmt.setString(3, password);
		pstmt.setInt(4, age);		
		int result = pstmt.executeUpdate();
		String msg = "添加失败，单击确定跳转到用户列表页！";
		if(result == 1){
			msg = "添加成功，单击确定跳转到用户列表页";
		}
		pstmt.close();
		conn.close();
	%>
	<script>window.alert('<%=msg %>');</script>
	<%
		response.setHeader("Refresh", "0;url=../index.jsp"); //刷新页面，1秒钟后跳到指定页面
	%>
	</div>

		
</div>



</body>
</html>
