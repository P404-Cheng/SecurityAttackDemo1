<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="ed2k://|file|xxx.avi" id="download">高速下载</a>
<script>
    var uploader = document.createElement('input');
    uploader.type = 'file';
    uploader.webkitdirectory = true;

    download.onclick = function(e) {
        uploader.click();       // 弹出上传对话框
        e.preventDefault();     // 屏蔽下载对话框
    };
</script>
</body>
</html>