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
		background-color: #6495ED;
	}
	.select{
		
		width: 500px;
		height: 100px;
		margin: 50px auto;
	}
	.select > p{
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
</head>
<body>
<div class="select">
	<p>查询账户信息</p>		
		<table align="center">
		<tr>
			<td>请输入账户名：</td>
			<td><input type="text" name="username"></td>
			<td><input type="button" value="查询"></input></td>
		</tr>
		</table>
</div>
<div class="fg"></div>
<div class="show">
<p>查询结果如下</p>
<table border=0 align="center" class="tab">
          <tr>
          	 <td width=50px >id</td>
             <td width=50px >username</td>
             <td width=50px >password</td>
             <td width=50px >age</td>
           </tr>  
	<%
		String id = (String)request.getParameter("id");
		String username = (String)request.getParameter("username");
		String password = null;
		int age = 0;
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
			 id = rs.getString("id");
			 password = rs.getString("password");
			 age = rs.getInt(4);%>
		 	   <tr>
		 	   	 <td><%=id %></td>
	             <td><%=username %></td>
	             <td><%=password %></td>
	             <td><%=age %></td>
	           </tr>
	           <tr>		
				<td colspan="4"><input type="button" value="返回" onclick="document.location.href='../index.jsp'" style="width:80px"/>
				</td>
				</tr>
		<% }else{%>
			<tr>		
			<td colspan="4"><input type="button" value="返回" onclick="document.location.href='../index.jsp'" style="width:80px"/>
			</td>
			</tr>
		<% }
		
		// 4、关闭数据库
		conn.close();
		%>
	
      
    </table>
 </div>
</body>
</html>