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
		
	.tab td{
		border:2px solid #EAEAEA;
		height:30px;					
	}
	.tab td input{
		width:100px;
		height:25px;
	}
	.tab td .modi{
		height:30px;
	}
</style>
<script language="javaScript">
		function update(id){			  
			  window.location.href="update1.jsp?id="+id;
			 
		}
</script>
</head>
<body>
<div class="update">
	<p>修改账户信息</p>	
</div>
<div class="fg"></div>
<div class="show">
<%
		
//1 load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		// 2 get the database conncetion
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/t1", "root", "123");		 		
		Statement stmt = conn.createStatement();
		String sql="select * from t1.um";
		ResultSet rs = stmt.executeQuery(sql);
		%>
		
		<table align="center" class="tab">
		<tr><th colspan="5"  height="50px">修改账户信息</th></tr>
		<tr><td>id</td><td>用户名</td><td>密码</td><td>年龄</td><td>操作</td></tr>
		<% while(rs.next()){
			String id=rs.getString("id");
			String username=rs.getString("username");
			String password=rs.getString("password");
			int age = rs.getInt("age");	%>
			<form action="update1.jsp" method="post">										
			<tr>
				<td width="20px"><input type="text" name="id" value="<%=id %>" style="text-align:center;background-color: #6495ED;border: 0px;" disabled="true"/></td>
				<td><input type="text" name="username" value="<%=username %>" style="text-align:center"/></td>
				<td><input type="text" name="password" value="<%=password %>" style="text-align:center"/></td>
				<td><input type="text" name="age" value="<%=age %>" style="text-align:center"/></td>
				<td><input type="submit" value="修改" class="modi"/></td>
			</tr>
		
			</form>							
	<%
		}	%>
			<tr  height="50px"><td colspan="5">					
					<input type="button" value="返回" onclick="document.location.href='../index.jsp'" style="width:160px;height:35px"/>
			</td></tr>		
		</table>	
	
	<%
		rs.close();
		stmt.close();
		conn.close();
	%>
</div>
</body>
</html>