<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Property Files Based Cross Site Scripting</title>
</head>
<body>
	<br/>
	<form method="post" action="ReadPropertyFileAction">
		 <table align="center">
		 	<tr>
		 		<td><input type="submit" value="读取内容"/></td>
		 		<td></td>
		 	</tr>
			<tr>
				<td align="right">电子油箱:</td>
				<td><%=request.getAttribute("email")==null?"":request.getAttribute("email") %></td>
			</tr>

		</table>
	</form>
	<jsp:include page="foot.jsp" />
</body>
</html>