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
		margin: 0 auto;
	}
	.add > p{
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
	}
	.tab td input{
		width:150px;
		height:25px;
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
		<form name="addForm"  action="add1.jsp" method="get">
		<table align="center" class="tab">
			<tr height="50px"><th colspan="2">添加账户</th></tr>	
			<tr><td>id</td><td><input type="text" name="id"/></td></tr>		
			<tr><td>用户名</td><td><input type="text" name="username"/></td></tr>
			<tr><td>密码</td><td><input type="password" name="password"/></td></tr>
			<tr><td>年龄</td><td><input type="number" name="age"/></td></tr>			
			<tr  height="50px"><td colspan="2">
					<input type="submit" value="添加" style="width:80px;height:30px"/>
					<input type="reset" value="重置" style="width:80px;height:30px"/>
					<input type="button" value="返回" onclick="document.location.href='../index.jsp'" style="width:80px;height:30px"/>
			</td></tr>
		</table>
		</form>
		
</div>



</body>
</html>
