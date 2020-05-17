<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.form.js"></script>
</head>
<body>
	<div>
		<form>
			名称:<input type="text" name="course_name"><br>
			单价:<input type="text" name="unit_price"><br> 	
			库存:<input type="text" name="stock_num"><br>	
		</form>
		<input type="button" value="添加" onclick="addCourse()">
	</div>
</body>
	<script type="text/javascript">
		function addCourse() {
			$.post(
				"addCourse.do",		
				$("form").serialize(),
				function (obj) {
					if(obj==true){
						alert("添加成功")
						location="allCourse.do"
					}else{
						alert("添加失败")
					}
				},
				"json"
			)
		}
	</script>
	
</html>