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
<title>网上书城</title>
<link href="<%=cssUrl%>bootstrap.min.css" rel="stylesheet">
<link href="<%=cssUrl%>index.css" rel="stylesheet">
<script type="text/javascript" src="<%=jsUrl%>jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=jsUrl%>bootstrap.min.js"></script>

</head>
<body>
		<%@ include file="/commons/header.jsp"%>
		<div class=" container" style="margin-top:40px;">
			 
			<table class="table  table-hover" style="font-size:13px;">
					<tr class="info text-center">
						<th>书名</th>
						<th>作者</th>
						<th>价格</th>
						<th>出版社</th>
						<th>ISBN</th>
					</tr>
				<s:iterator value="itemlist" var="item">
					
					<tr>
						<td><s:property value="#item.name"/></td>
						<td><s:property value="#item.author"/></td>
						<td><s:property value="#item.price"/></td>
						<td><s:property value="#item.press"/></td>
						<td><s:property value="#item.isbn"/></td>
					</tr>
				</s:iterator>
			</table>
		
		</div>
		<%@ include file="/commons/footer.jsp"%>
</body>
</html>