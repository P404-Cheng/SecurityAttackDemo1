<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<%

	out.println(request.getParameter("condition"));
	%>
</head>
<script>
	function goHistory(){
		alert("ok");
		history.go(-1);
	}
</script>
<body>
	<br/>
	<br/>
	<h2>当前用户：<%= request.getSession().getAttribute("userName") %></h2>
	<br/>
	<form method="get" target="sessionTest.jsp">
		&nbsp;&nbsp;<input type="text" name="condition" style="width:300px;height:100px"/><br></br>
		&nbsp;&nbsp;<input type="submit" />
	</form>
	<input type="button" onclick="goHistory()" value="goHistory"/>
</body>
</html>