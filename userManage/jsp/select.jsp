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
		

	.tab td input{
		width:100px;
		
	}
</style>
<script language="javascript">
	function sel(){			
		var nameid = document.getElementById('uname');
		var name = nameid.value;		
		window.location.href="select1.jsp?username="+name;		
	}
</script>
</head>
<body>
<div class="select">
	<p>查询账户信息</p>	

		<table align="center">
		<tr>
			<td>请输入用户名：</td>
			<td><input type="text" value="" id="uname"  style="width:150px;height:25px"/></td>
			<td><input type="button" value="查询" onclick="sel()"style="height:30px;width:80px;"/></td>
		</tr>
		</table>
</div>
<div class="fg"></div>


</body>
</html>
