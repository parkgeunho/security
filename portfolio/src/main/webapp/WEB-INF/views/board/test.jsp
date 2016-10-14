<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%        
	
	String cp = request.getContextPath();

%>

<html>
<head>
  <meta charset="UTF-8">
  <title>Summernote</title>
    
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="/blog/resources/fileupload/jquery.ui.widget.js"></script>
  <script src="/blog/resources/fileupload/jquery.iframe-transport.js"></script>
  <script src="/blog/resources/fileupload/jquery.fileupload.js"></script>	
  
  

  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <script src="/blog/resources/summernote/summernote.js"></script>
  <script src="/blog/resources/summernote/lang/summernote-ko-KR.js"></script>
  
  
  <script src="/blog/resources/fileupload/mycontroll.js"></script>
   <link href="/blog/resources/fileupload/dropzone.css" type="text/css" rel="stylesheet">
  
</head>
<body>
	<Form name="boardWrite" method="post" action="save" id="boardWrite" >
		
		<table>	
			<tr>
			<td>제목</td>
			<td><input type="text" name="subject"  placeholder="제목을 입력해주세요."></td>
			</tr>
			<tr>
			<td>내용</td>
			<td><div class="summernote" id="summernote"></div></td>
			</tr>

			<tr>
				<td>파일</td>
				<td><div style="width: 500px;">
		 
		    	<div id="filezone" style="width: 500px; height: 100px;background-color: blue;">Drop files here</div>
				<input id="fileupload" type="file" name="files[]" data-url="filecontroll/upload" multiple style="display: none;">
		
			
				</div>
					
				</td>
			</tr>
			
		
		</table>
		<button type="button">취소</button> <button type="button" id="subbmit">즈장</button>
	</Form>
	
  <script>
    $(document).ready(function() {
        $('.summernote').summernote({
        	
        	lang : 'ko-KR',
        	width : '720px'
   		 });
        
        $('#subbmit').on('click',function(){
            $('.summernote').append('<input type="hidden" name="content", id="Contents" />');
            $('#Contents').val($('#summernote').summernote('code'));
            $('#boardWrite').submit();
        })
     });
    
/*     var checkUnload = true;
    $(window).on("beforeunload", function(){
        if(checkUnload) return "이 페이지를 벗어나면 작성된 내용은 저장되지 않습니다.";
    });
     */

    
  </script>


</body>
</html>