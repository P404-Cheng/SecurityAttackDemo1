<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
document.URL.Value
</script>
</head>
<body>
	<form method="post" action="testAction">
	ID: <input type="text" id="cid" name="cid"/>
	<br></br>
	Name:<input type="text" id="cname" name="cname"/>
	<br></br>
	<input type="button" value="Refresh" onclick="javascript:window.location.href='Test.jsp?cid='+document.all.cid.value;"/>
	<br></br>
	<%

	 String cid= request.getParameter("cid");
	if(cid!=null){
		cid= test.Util.escapeHTMLTags(cid);
		out.println(cid);

	}

	String cname= request.getParameter("cname");
	out.println(cname);
	%>
	<script>
	var aa='<%=request.getParameter("sdId")%>';
	</script>
    <br></br>
    <!--
    '' onmouseover=javascript:alert(/aaa/)
    %27%27%20%6F%6E%6D%6F%75%73%65%6F%76%65%72%3D%6A%61%76%61%73%63%72%69%70%74%3A%61%6C%65%72%74%28%2F%61%61%61%2F%29
    -->
    ID:<input type="text" id="sdId" name="sdId" value=<%=request.getParameter("sdId") %>></input>
    <br></br>
     <br></br>
     <input type="text" id="aaa" name="aaa" />
    <%=cname%>
    <input type="submit"/>"
    <%
    String aa="%3C%73%63%72%69%70%74%3E%61%6C%65%72%74%28%27%69%20%61%6D%20%68%65%72%65%27%29%3C%2F%73%63%72%69%70%74%3E";
    //out.println(aa);
    %>
   </form>
   <script>
   //document.all("canme").value="hello";
   //use cname").value="hello"; alert('xss');document.all("canme to inject script
    document.all("<%=cname%>").value="hello";
/*
   function xssTRACE(){
	   var xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	   xmlHttp.open("TRACE","http://localhost.:8080/SecurityAttackDemo/Test.jsp",false);
	   xmlHttp.send();
	   xmlDoc=xmlHttp.responseText;
	   alert(xmlDoc);
	   }
   function xssTRACE2() {
	   var openWin=open("blank.htm","swords","width=500,height=400");
	   var otraceswords=openWin.external;
	   openWin.location.href="http://localhost.:8080/SecurityAttackDemo/Test.jsp";
	   setTimeout(
	   function () {
	   otraceswords.NavigateAndFind('javascript:xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");xmlHttp.open("TRACE","http://localhost.:8080/SecurityAttackDemo/Test.jsp",false);xmlHttp.send();xmlDoc=xmlHttp.responseText;alert("\document.Cookie \n" + xmlDoc);',"","");
		},
	   1024
	   );
	   }

*/
   </script>

   <INPUT TYPE=BUTTON OnClick="xssTRACE2();" VALUE='XSS TRACE'>
</body>
</html>