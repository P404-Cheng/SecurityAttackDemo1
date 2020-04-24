<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Security Attack Demo</title>
</head>
<body>
<input type="button" value="String SQL Injection" onclick="javascript:window.location.href='stringSqlInjectionMain.jsp'"/>
<br/>
<br/>
<input type="button" value="Numeric SQL Injection" onclick="javascript:window.location.href='numericSqlInjectionMain.jsp'"/>
<br/>
<br/>
<input type="button" value="Stored Cross Site Scripting" onclick="javascript:window.location.href='xssPersistentMain.jsp'"/>
<br/>
<br/>
<input type="button" value="Phishing with XSS" onclick="javascript:window.location.href='xssPhishingMain.jsp'"/>
<br/>
<br/>
<input type="button" value="Parameter Tampering" onclick="javascript:window.location.href='parameterTamperingMain.jsp'"/>
<br/>
<br/>
<input type="button" value="Parameter Tampering" onclick="javascript:window.location.href='improperErrorHandingMain.jsp'"/>
</body>
</html>