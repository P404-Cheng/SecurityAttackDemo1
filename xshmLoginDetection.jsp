<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> <title> Cross-Site Login Detection </title> </head>
<body>
<form id="form1"> <div>
 <iframe src='xshmLogin.jsp' id='myframe' onload='checkHistory()' ></iframe> </div>
 </form> </body> </html>
 <script language="javascript" type="text/javascript">
 var prevHLength = -1;
 function checkHistory() {
	 if (prevHLength == -1) {
		 prevHLength = history.length;
		 document.getElementById('myframe').src='xshmLoginSuccess.jsp';
	 	 var tempLength=history.length;

	 	 alert(prevHLength);
 		}
	 else {

		 if (prevHLength == history.length) { alert("Not authenticated!"); }
		 else { alert("Authenticated"); }
		 }
	 }
</script>
<jsp:include page="foot.jsp" />
</body>
</html>