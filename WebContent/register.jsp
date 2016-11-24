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
<script type="text/javascript">
	function login() {
		$.ajax({
			url : "login",
			data : {
				uname : $("#uname").val(),
				upwd : $("#upwd").val()
			},
			success : function(result) {
				if (result == "true") {
					alert(result);
				} else {
					alert("不行了");
				}
			},
			error : function() {
				alert("请求失败");
			}
		});
	}
</script>
</head>
<body>
<br><br><br><br><br><br><br>
	<div class="row">
		<div class="col-md-3 col-md-offset-5 bg-info">
			<div class="page-header">
			<div class="panel panel-heading">
				<center>
				<h3>新用户注册</h3>
				</center>
			</div>
			<div class="panel-body">
			<form action="register">
				<div class="form-group">
					<input name="uname" id="uname" type="text" class="form-control" placeholder="请输入账号">
				</div>
				<div class="form-group">
					<input name="upwd" id="upwd" type="password" class="form-control" placeholder="请输入密码">
				</div>
				<div class="form-group">
					<input name="upwd1" id="upwd1" type="password" class="form-control" placeholder="请再次输入密码">
				</div>
				<div class="form-group">
					<input name="uemail" id="uemail" type="text" class="form-control" placeholder="请输入邮箱">
				</div>
				<div class="form-group">
					<input  type="submit" class="form-control btn btn-primary btn-primary.disabled.active" value="注册" >
				</div>
				<div class="form-group">
				<div style="float: right"><a href="login.jsp">登录</a></div>
				</div>
			</form>
			</div>
			</div>
		</div>
	</div>
</body>
</html>