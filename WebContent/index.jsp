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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts2拦截器测试--网上书城</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">
<link href="<%=cssUrl%>index.css" rel="stylesheet">
<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="/commons/header.jsp"%>
	<div class="container">
		<div class="jumbotron" >
	        <h1>书城系统</h1>
	        <p class="lead">一个基于Struts的瓜皮项目。</p>
	        
	        <s:if test="#session.isLogin==null||#session.isLogin==false">
				
				<a class="btn btn-lg btn-success" href="login.jsp" role="button">登录</a>
				<a class="btn btn-lg btn-default" href="listBookInfo.action">我的书单[Hibernate]</a>
			</s:if>
		
			<s:if test="#session.isLogin==true">
				<p>你好！<s:property value="#session.userName"/></p>
				<a class="btn btn-lg btn-success" href="showList.action">我的书单</a>
				<a class="btn btn-lg btn-default" href="logout.action">退出</a>
			</s:if>
	    </div>
	</div>
	<%@ include file="/commons/footer.jsp"%>

</body>
</html>