<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<br/>
	<br/>
	<form accept-charset='UNKNOWN' action="httpSplitingRedirect.jsp" method="post">
		<table align="center">
			<tr>
				<td>
					搜索姓名：
				</td>
				<td><input type="text" name="userName"/></td>
				<td><input type="submit" value="搜索"/></td>
			</tr>
			<tr>
				<td>结果：</td>
				<td>

				</td>
			</tr>
		</table>
	</form>
<jsp:include page="foot.jsp" />
</body>
</html>