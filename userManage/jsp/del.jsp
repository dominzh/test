<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
<style type="text/css">
	 body{
		background-color: #6495ED;
	}
	.del{
		
		width: 500px;
		height: 100px;
		margin: 0 auto;
	}
	.del > p{
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
		width:150px;
		height:25px;		
	}
	

</style>
<script language="javaScript">
		function del(id,name){
			  alert('删除账户名为'+id+'的用户');
			  window.location.href="del1.jsp?id="+id+"&username="+name;
			 
		}
</script>
</head>
<body>
<div class="del">
	<p>删除账户信息</p>
</div>
<div class="fg"></div>
<div class="show">
<table align="center" class="tab" border=1 class="tab">
			<tr height="50px"><th colspan="5">删除账户</th></tr>			
			<tr height="35px"><td>id</td><td>用户名</td><td>密码</td><td>年龄</td><td>操作</td></tr>   
	<%
		// 1 load the db driver
		Class.forName("com.mysql.jdbc.Driver");
		// 2 get the database conncetion
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/t1", "root", "123");
        String sql = "select * from t1.um";
		// 3 、创建一个statement对象，并且执行sql
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(true) {
			boolean flag = rs.next();
			if(!flag) {
				break;
			}
			String id = rs.getString(1);
			String username = rs.getString(2);
			String password=rs.getString(3);
			int age = rs.getInt(4);
	%>
	 	   <tr height="35px";>
	 	   	 <td><%=id %></td>
             <td><%=username %></td>
             <td><%=password %></td>
             <td><%=age %></td>
             <td><input type="button" onclick="del('<%=id %>','<%=username %>')" value="删除"  style="height:30px;width:80px;"/>
              </td>
           </tr>   
	
	<%	
	}
		// 4、关闭数据库
		conn.close();
    %>
    </table>
    </div>
    
</body>
</html>