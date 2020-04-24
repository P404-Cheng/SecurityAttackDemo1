<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.duma.sad.dao.impl.UserDaoImpl"%>
<%@page import="com.duma.sad.dao.UserDao"%>
<%@page import="com.duma.sad.model.User"%>
<%@page import="java.util.List"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link type="text/css" href="css/main.css" rel="stylesheet" />
<title>XSS-UserList</title>
</head>
<body>
	<br/>
	<br/>
	<%
		UserDao userDao = new UserDaoImpl();
		List<User> userList= userDao.getAllUser();
	%>
	<table class="table" border="1" align="center" cellpadding="0" cellspacing="0" width="200px">
	<tr class="tableHead" ><td>姓名</td><td>地址</td></tr>
	<%
		for(User user: userList){
		%>
		<tr>
			<td><%=user.getName() %></td>
			<td><%=user.getAddress() %></td>
		</tr>
		<%} %>
	</table>
	<jsp:include page="foot.jsp" />
</body>
</html>