<%@ page contentType="text/html; charset=UTF-8"%>
<%        
	
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<!-- <script src="/blog/resources/fileupload/jquery.ui.widget.js"></script>
<script src="/blog/resources/fileupload/jquery.iframe-transport.js"></script>
<script src="/blog/resources/fileupload/jquery.fileupload.js"></script>


<link rel="stylesheet" href="/blog/resources/bootstrap.min.css">
<script src="/blog/resources/jquery-3.1.0.min.js"></script>
<script src="/blog/resources/bootstrap.min.js"></script>
<script src="/blog/resources/fileupload/myuploadfunction.js"></script> -->
<!-- 에디터용 -->

<link rel="stylesheet" href="/blog/resources/dropzone.css" type="text/css">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>Spring MVC - jQuery File Upload</h1>
<div style="width:500px;padding:20px">
 
    <input id="fileupload" type="file" name="files[]" data-url="/upload" multiple>
 
    <div id="dropzone">Drop files here</div>
 
    <div id="progress">
        <div style="width: 0%;"></div>
    </div>
 
    <table id="uploaded-files">
        <tr>
            <th>File Name</th>
            <th>File Size</th>
            <th>File Type</th>
            <th>Download</th>
        </tr>
    </table>
 
</div>
</body> 

</html>