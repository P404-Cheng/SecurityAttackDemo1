<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Cross Site Scripting</title>
</head>
<body>
	<br/>
	<form method="post" action="AddUserAction">
		 <table align="center">
			<tr>
				<td align="right">�û���:</td>
				<td><input align="left" type="text" name="userName"></input></td>
			</tr>
			<tr>
				<td align="right">����:</td>
				<td><input align="left" type="password" name="password"></input></td>
			</tr>
			<tr>
				<td align="right">��ַ:</td>
				<td><input align="left" style="height:55px" type="text" name="address"></input></td>
			</tr>
			<tr>
				<td align="right">&nbsp;</td>
				<td><input align="left" type="submit" value="����"></input></td>
			</tr>
			<tr>
				<td colspan="2"><a href="xssUserList.jsp">�û��б�</a></td>
			</tr>
		</table>
	</form>
	<jsp:include page="foot.jsp" />
</body>
</html>