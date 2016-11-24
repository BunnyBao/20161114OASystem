<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery/jquery-3.1.1.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/npm.js"></script>

<style type="text/css">
.vertical-center{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
</head>
<body>
<br><br><br><br><br><br><br>
	<div class="row">
		<div class=" col-md-3 col-md-offset-5 bg-success">
			<div class="page-header" style="">
			<div class="panel panel-heading" style="margin-top: 0px;margin-left: 0px;margin-right: 0px;background-image: url('images/03.png');">
				<center>
				<h3>登录OA后台管理</h3>
				</center>
			</div>
			<div class="panel-body">
			<form action="login">
				<div class="form-group">
					<input name="uname" id="uname" type="text" class="form-control" placeholder="请输入账号">
				</div>
				<div class="form-group">
					<input name="upwd" id="upwd" type="password" class="form-control" placeholder="请输入密码">
				</div>
				<div class="form-group">
					<input type="submit" class="form-control btn btn-primary btn-primary.disabled.active" value="登录" >
				</div>
				<div class="form-group">
				<div style="float: right"><a href="register.jsp">注册</a></div>
				<div style="float: left"><a href="">忘记密码</a></div>
				</div>
			</form>
			</div>
			</div>
		</div>
	</div>
</body>
</html>