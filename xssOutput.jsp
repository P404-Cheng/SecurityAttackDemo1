<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<form action="testXss.jsp" method="post">
<body>
	<br/>
	<br/>
	SDID:<input align="left" type="text" name="sdId"></input><br/><br/>
	NAME:<input align="left" type="text" name="cname"></input><br/><br/>
	<input type="submit" value="Xss"/>

</body>
</html>