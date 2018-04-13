<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	.header{
		width: 100%;
		height: 150px;
		background-color: #3A5FCD;		
	}
	.header > p{
		text-align: center;		
		line-height: 150px;		
		font-size: 40px;
		text-shadow:5px 2px 8px #FFFAFA;		
	}
	.container > img{
		width: 100%;
		height: 400px;
	}
	.top-nav{
		background-color: #BFBFBF;
	}
	.nav{
			width: 800px;
			height: 40px;
			position: relative;			
			margin-left: 50%;
			left: -400px;

	}
	.nav ul{			
		list-style: none;

	}
	.nav ul li{
		float: left;
		width: 200px;
		height: 40px;

	}
	.nav ul li a{
		display: block;
		background-color: #BFBFBF;
		text-align: center;
		line-height: 40px;
		text-decoration: none;
		color: #000;
	}
	.nav ul li a:hover{			
		background-color: #EAEAEA;
	}
	.footer{
		width: 100%;
		height: 85px;
		background-color: #3A5FCD;
		position: fixed;	
		bottom: 0;	
		text-align: center;
		font-size: 14px;			
	}
	.footer > div{
		margin-top: 15px;
	}
</style>
</head>
<body>
<div class="header">
	<p>账户信息管理系统</p>	
</div>
<div class="top-nav">
	<div class="nav">
		<ul>
			<li><a href="jsp/select.jsp">查询账户信息</a></li>
			<li><a href="jsp/add.jsp">添加账户信息</a></li>
			<li><a href="jsp/update.jsp">修改账户信息</a></li>
			<li><a href="jsp/del.jsp">删除账户信息</a></li>
		</ul>
	</div>
</div>

<div class="container">
	<img src="images/shouye.jpg">
</div>

<div class="footer">
<div>
	<p>
		版权所有 中国·广东·domino 邮编：510225 
	</p>
	<br>
	<p>
		备案/许可证号：
		<a href="">粤ICPXXX</a> 
	</p>	
</div>
</div>
</body>
</html>