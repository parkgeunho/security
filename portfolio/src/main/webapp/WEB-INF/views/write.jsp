<%@ page contentType="text/html; charset=UTF-8"%>
<%        
	
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="/blog/resources/bootstrap.min.css">
<script src="/blog/resources/jquery-3.1.0.min.js"></script>
<script src="/blog/resources/bootstrap.min.js"></script>

<!-- 에디터용 -->
<link rel="stylesheet" href="/blog/resources/summernote/summernote.css">
<script src="/blog/resources/summernote/summernote.js"></script>
<script src="/blog/resources/summernote/lang/summernote-ko-KR.js"></script>
<!-- 에디터용 -->



<title>Insert title here</title>
</head>
<body>
<div>
<div id="summernote" style="margin-bottom: 0"></div>
<div style="width: 200px;height: 200px; background-color: red" >tq</div>

</div>
  <script>
    $(document).ready(function() {
        $('#summernote').summernote({
        	height:300,
        	lang:'ko-KR'
        	 

        });
    });
  </script>



</body>
</html>