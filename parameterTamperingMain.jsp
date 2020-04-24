<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Parameter Tampering</title>
</head>
<body>
	<form action="PurchaseAction" method="post">
	<br></br>
	<div align="center"><font color="red"><%=request.getAttribute("errMessage")==null?"":request.getAttribute("errMessage") %></font></div>
	<br/>
	<div align="center">购物车</div>
	<table align="center" border="1" width="400px">
		<tr>
			<td>商品名称</td>
			<td>价格</td>
			<td>数量</td>
		</tr>
		<tr>
			<td>索尼a350</td>
			<td><input type="hidden" name="price" value="5000"></input>5000 RMB</td>
			<td><input type="text" name="quantity" value="<%=request.getParameter("quantity")==null?"":request.getParameter("quantity") %>"/></td>
		</tr>
	</table>
	<table align="center" width="400px">
		<tr>
			<td align="left">&nbsp;
				<div align="center"><%=request.getAttribute("totalCharge")==null?"":request.getAttribute("totalCharge") %></div>
			</td>
			<td width="50px" align="right">
				<input type="submit" value="付款" />
			</td>
		</tr>
	</table>
	</form>
	<jsp:include page="foot.jsp" />
</body>
</html>