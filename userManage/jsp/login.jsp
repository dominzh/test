<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>denglu</title>
	<meta charset="utf-8">
	<style type="text/css">
		body{
			background: url("../images/shouye.jpg");
		}
		.bigBox{
			margin: 150px auto;
		}
		.title > p{
			text-align: center;
			font-size: 25px;
		}
		.login{
			width: 400px;
			height: 200px;
			border: 2px solid #EAEAEA;
			background-color: #3A5FCD;
			position: relative;
			margin-left: 50%;
			left: -200px;
		}
/*		.login .label{
			position: absolute;
   		 	z-index: 3;   		
    		width: 35px;
    		height: 37px;
    		border-right: 1px solid #bdbdbd;
    		background:url("images/icons.png"); 
		}*/
		table{
			margin-top: 30px;
			border-collapse:collapse;			
			border:1px solid #EAEAEA;
			text-align:center;			
		}
	
		      
		table tr td input{
			color: #D9D9D9;
			border: 0;
		}
		.sub{
			width: 100px;
			height: 37px;
			margin-top: 20px;
			margin-left: 150px;			
			border: 1px solid #EAEAEA;
			border-radius: 5px;
		}
	</style>
</head>
<body>
<div class="bigBox">
	<div class="title">
		<p>账户登录</p>
	</div>
	<div class="login">
		<form action="judge.jsp" method="post">
			<table align="center" border="1">
				<tr>
					<td style="width: 60px;height: 38px;">用户名</td>
					<td><input type="text" name="username" placeholder="请输入用户名" value="" style="width:200px;height:35px; padding-left: 5px; "></td>
				</tr>
				<tr> 
					<td height="20" colspan="2"></td>
				</tr>
				<tr>
					<td style="width: 60px;height: 38px;">密码</td>
					<td><input type="password" name="password" placeholder="请输入密码" value=""  style="width:200px;height:35px;padding-left: 5px;   "></td>
				</tr>
			</table>
			<div><input type="submit"  class="sub" value="登录"></div>			
		</form>

	</div>
</div>

</body>
</html>