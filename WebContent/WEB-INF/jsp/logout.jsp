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
<title>登录</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">
<link href="<%=cssUrl%>index.css" rel="stylesheet">
<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>

</head>
<body>

		<%@ include file="/commons/header.jsp"%>
		<div class="container">
		 
			<div class="jumbotron" >
	  			<h3>注销成功！</h3>
	  			<a class="btn btn-lg btn-success" href="login.jsp">重新登录</a>
				<a class="btn btn-lg btn-default" href="index.jsp">回到首页</a>
			</div>
		
		</div>	
		<%@ include file="/commons/footer.jsp"%>
</body>
</html>