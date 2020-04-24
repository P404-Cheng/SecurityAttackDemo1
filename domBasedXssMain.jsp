<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script type="text/javascript" src="js/main.js"></script>
<title>DOM Based XSS Scripting</title>
</head>
<body>
	<br/>
	<br/>
	<table align="center">
		<tr>
			<td colspan="2" id="greeting">&nbsp;</td>
		</tr>
		<tr>
			<td width="150px">请输入您的名字：</td>
			<td><input onKeyUp='displayGreeting(userName.value)' type="text" id="userName"/></td>
		</tr>
		<tr>
			<td>示例一：</td>
			<td>&lt;img src=x onerror=;;alert('XSS') /&gt;</td>
		</tr>
		<tr>
			<td>示例二：</td>
			<td>&lt;IFRAME SRC="javascript:alert('XSS');"&gt;&lt;/IFRAME&gt;</td>
		</tr>
		<tr>
			<td>示例三：</td>
			<td>请输入您的密码:&lt;BR&gt;&lt;input type = "password" name="pass"/&gt;
			&lt;button onClick="javascript:alert('盗取到您的密码: ' + pass.value);"&gt;
			Submit&lt;/button&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;
			&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;
			&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;</td>
		</tr>
	</table>
	<jsp:include page="foot.jsp" />
</body>
</html>