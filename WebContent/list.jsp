<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>所有列表的页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_work.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.form.js"></script>
</head>
<body>
	<a href="add.jsp">添加</a>
	<table>
		<thead>
			<tr>
				<th>编号</th>
				<th>时间</th>
				<th>名称</th>
				<th>单价</th>
				<th>库存</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="li">
				<tr>
					<td>${li.id }</td>
					<td>
						<fmt:formatDate  pattern="yyyy-MM-dd HH:mm:ss" value="${li.created }"/>
					</td>
					<td>${li.course_name }</td>
					<td>${li.unit_price }</td>
					<td>${li.stock_num }</td>
				</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>