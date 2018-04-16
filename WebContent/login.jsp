<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String jsUrl=request.getContextPath()+"/public/js/";
	String cssUrl=request.getContextPath()+"/public/css/";
	String imgUrl=request.getContextPath()+"/public/img/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">
<link href="<%=cssUrl%>index.css" rel="stylesheet">
<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>three.min.js" ></script>
</head>
<body>
	<%@ include file="/commons/header.jsp"%>
	
		<div class="container":form action="user_login" method="post" class="form-signin" style="width:23%;
			    position: absolute;
			    left: 40%;
			    top: 25%;
			    z-index: 9;">
		<form action="login" class="form-signin">
	        <h2 class="form-signin-heading">请登录</h2>
	        <label for="inputEmail" class="sr-only">用户名：</label>
	        <input type="text" name="name" id="inputText" class="form-control" placeholder="你的用户名" required autofocus>
	        <label for="inputPassword" class="sr-only">密码：</label>
	        <input type="password" name="passwd" id="inputPassword" class="form-control" placeholder="你的密码" required>
	        
	        <button  class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      	</form>
		</div>
			
	<script type="text/javascript" src="<%=jsUrl%>wallbgcanvas.js" ></script>
	<div id="wall-bg">
		<span></span>
		<canvas width="100%" height="100%" style="width: 100%; height: 100%;"></canvas>
	</div>
	<%@ include file="/commons/footer.jsp"%>
</body>
</html>