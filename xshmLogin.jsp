<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Cross-Site Login Detection</title>
</head>
<body>
<br/>
<form method="post" action="XshmLoginAction">
	 <table align="center">
	 	<tr>
	 		<td colspan="2"><div align="center"><font color="red"><%=request.getAttribute("errMessage")==null?"":request.getAttribute("errMessage") %></font></div></td>
	 	</tr>
		<tr>
			<td align="right">用户名:</td>
			<td><input align="left" type="text" name="userName"></input></td>
		</tr>
		<tr>
			<td align="right">密码:</td>
			<td><input align="left" type="password" name="password"></input></td>
		</tr>
		<tr>
			<td align="right">&nbsp;</td>
			<td><input align="left" type="submit" value="登录"></input></td>
		</tr>
	</table>
</form>
<jsp:include page="foot.jsp" />
</body>
</html>