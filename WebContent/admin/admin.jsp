<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css" />
<script type="text/javascript" src="../jquery/jquery-3.1.1.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/npm.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-5">
				<h2>OA办公自动化系统</h2>
			</div>
			<div class="col-lg-6">
			<h2>可以显示天气预报</h2>
			</div>
			<div class="col-lg-1">
				<div class="dropdown">
					<a href="" data-toggle="dropdown"><img style="width: 50px"  alt="" src="images/001.jpeg"
						class="img-circle" valign="middle" />${sessionScope.user.uname}</a>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">设置</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="exit">退出</a></li>
					</ul>
				</div>
			</div>
		</div>

	<nav class="navbar navbar-inverse">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">导航</a>
    </div>
    <div id="navbar-menu" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="admin/welcome.jsp">首页</a></li>
            <li><a href="#">个人中心</a></li>
            <li><a href="login.jsp">注销系统</a></li>
        </ul>
    </div>
</nav>
<div id="content" class="row-fluid">
        <div class="col-md-2">
           <div class="panel-group" id="accordion">
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseOne">
					用户信息
				</a>
			</h4>
		</div>
		<div id="collapseOne" class="panel-collapse collapse in">
			<div class="panel-body">
				个人中心
			</div>
			<div class="panel-body">
				个人邮箱
			</div>
		
		</div>
	</div>
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseTwo">
					用户中心
				</a>
			</h4>
		</div>
		<div id="collapseTwo" class="panel-collapse collapse">
			<div class="panel-body">
				创建新用户
			</div>
			<div class="panel-body">
				用户列表
			</div>
			<div class="panel-body">
			权限管理
			</div>
		</div>
	</div>
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseThree">
					公司活动
				</a>
			</h4>
		</div>
		<div id="collapseThree" class="panel-collapse collapse">
			<div class="panel-body">
				项目管理
			</div>
		</div>
	</div>
	<div class="panel panel-info">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseFour">
					设备管理
				</a>
			</h4>
		</div>
		<div id="collapseFour" class="panel-collapse collapse">
			<div class="panel-body">
				耗材管理
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function () { $('#collapseFour').collapse({
		toggle: false
	})});
	$(function () { $('#collapseTwo').collapse('show')});
	$(function () { $('#collapseThree').collapse('toggle')});
	$(function () { $('#collapseOne').collapse('hide')});
</script>  
        </div>
        <div class="col-md-10">
         <!--  换成iFrame -->
         <iframe name="mainFrame" src="admin/welcome.jsp" style="width: 100%;height:600px;border: 0">
         
         </iframe>
        </div>
    </div>

	</div>
</body>
</html>