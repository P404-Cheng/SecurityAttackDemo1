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
			<td width="150px">�������������֣�</td>
			<td><input onKeyUp='displayGreeting(userName.value)' type="text" id="userName"/></td>
		</tr>
		<tr>
			<td>ʾ��һ��</td>
			<td>&lt;img src=x onerror=;;alert('XSS') /&gt;</td>
		</tr>
		<tr>
			<td>ʾ������</td>
			<td>&lt;IFRAME SRC="javascript:alert('XSS');"&gt;&lt;/IFRAME&gt;</td>
		</tr>
		<tr>
			<td>ʾ������</td>
			<td>��������������:&lt;BR&gt;&lt;input type = "password" name="pass"/&gt;
			&lt;button onClick="javascript:alert('��ȡ����������: ' + pass.value);"&gt;
			Submit&lt;/button&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;
			&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;
			&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;&lt;BR&gt;</td>
		</tr>
	</table>
	<jsp:include page="foot.jsp" />
</body>
</html>