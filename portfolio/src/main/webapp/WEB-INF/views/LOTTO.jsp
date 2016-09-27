<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="https://www.gstatic.com/firebasejs/3.3.0/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBbVyb4oAEC30npcV-8ixvOq8u-okIM2ZQ",
    authDomain: "test-d0fad.firebaseapp.com",
    databaseURL: "https://test-d0fad.firebaseio.com",
    storageBucket: "test-d0fad.appspot.com",
  };
  firebase.initializeApp(config);
//Get a reference to the database service

  var database = firebase.database().ref("ranks");

  
  function tt(num,count){
	  
	  if(num!=6){
		  var test = database.child(num-1);
			console.log("num"+num + "count"+count)
			test.update({
				count : count-1
			});
		  
	  }
		
	   
	  
	  
  }
 
  
  database.once("value",function(data){

		 ch(data); 
	});
  
  
  
  function ch(data){
	  
	  var json = data.val();
	  var list = new Array();
	  
	  for(var i=0; i <6;i++){
		  
		  list[i]=JSON.stringify(json[i].count);
		  
		  
	  }

	   var num = Math.floor(Math.random()*(6-1+1))+1;

	  var count = list[num-1];
	  while(count==0){
		 
		 num = Math.floor(Math.random()*(6-1+1))+1;
		 count = list[num-1];
		
	 }
	var test = Math.random();
	console.log("test"+test);
		tt(num,count);  
		
		  document.getElementById("ch").innerHTML=num+"등입니다." + (count-1)+ "장남음";
	   
  }
  
  
  
  
  
  
  
  
</script>
    
</head>
<body>
<div id="ch"></div>
<input type="button" onclick="test()" value="실험">


</body>
</html>