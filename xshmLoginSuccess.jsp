<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Cross-Site Login Detection</title>
<%

if(request.getSession().getAttribute("userName")==null){
	response.sendRedirect("xshmLogin.jsp");
}
%>
</head>
<body>
	<br/>
	<br/>
	<h2>当前用户：<%= request.getSession().getAttribute("userName") %></h2>
	<br/>
<jsp:include page="foot.jsp" />
</body>
</html>