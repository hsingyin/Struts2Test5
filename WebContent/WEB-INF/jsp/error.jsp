<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String jsUrl=request.getContextPath()+"/public/js/";
	String cssUrl=request.getContextPath()+"/public/css/";
	String imgUrl=request.getContextPath()+"/public/img/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ERROR</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">
<link href="<%=cssUrl%>index.css" rel="stylesheet">
<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>

</head>
<body>
	
    <%@ include file="/commons/header.jsp"%>
	<div class="container">
			<div class="jumbotron" style="margin-top:30px;">
	  			<h1>错误！</h1>
	  			<p>抱歉，请重新进行操作！</p>
	  			<p><a class="btn btn-primary btn-lg" href="login.jsp" role="button">重新登录</a></p>
			</div>
			
	</div>	
	<%@ include file="/commons/footer.jsp"%>
</body>
</html>