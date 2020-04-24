<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@page import="com.duma.sad.model.User"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<form action="SearchUserByIdAction" method="post">
<body>
	<br/>
	<br/>
	<table align="center">
		<tr>
			<td>选择你要查看的名字：
				<select name='userId'>
					<option value='1'>
						Jim
					</option>
					<option value='2'>
						Ricky
					</option>
					<option value='3'>
						Andy
					</option>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">
				<input type="submit" value="查询"/>
			</td>
		</tr>
	</table>
    <br/>

	<%
		List<User> userList = (List<User>)request.getAttribute("userList");
		if(userList!=null){
	%>
	 <table border="1" align="center" width="200px">
	<tr><td>Name</td><td>Address</td></tr>
	<%
			for(User user: userList){
			%>
			<tr>
				<td><%=user.getName() %></td>
				<td><%=user.getAddress() %></td>
			</tr>
		<%}%>
		</table>
		<%}%>

</body>
<jsp:include page="foot.jsp" />
</form>
</html>