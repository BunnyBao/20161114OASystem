<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css" />
<script type="text/javascript" src="../jquery/jquery-3.1.1.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/npm.js"></script>
</head>
<body>
<div class="row">
<div class="col-lg-8">
<h3 class="panel-title">个人信息</h3>
<div
class="panel-body">
<table class="table">
<tr>
<td>姓名</td>
<td>${sessionScope.user.uname}</td>
<td>邮箱</td>
<td>${sessionScope.user.uemail}</td>
</tr>
<tr>
<td>321</td>
<td>32</td>
<td>32</td>
<td>32</td>
</tr>
</table>
</div>
</div>
 <div class="col-lg-4">

</div> 
</div>
</body>
</html>