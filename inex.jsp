<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
    language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Simple Mail Program</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
 <link rel="stylesheet" href="styles.css">
</head>
<body>
<%
    int num = 1;
    String no = (String) session.getAttribute("no");
%>
		<div class="col twelve whole">

        	<div class="flex-container">
				<div class="flex-item" id="flex1"></div>
			    <div class="flex-item" id="flex2"></div>
				<div class="flex-item" id="flex3"></div>
			</div>
    
     		<div class="flex-container">
				<div class="flex-item" id="flex4"></div>
				<div class="flex-item" id="flex5"></div>
				<div class="flex-item" id="flex6"></div>
			</div>

			<div class="flex-container">
				<div class="flex-item" id="flex7"></div>
				<div class="flex-item" id="flex8"></div>
				<div class="flex-item" id="flex9"></div>
			</div>

		</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div  class="card">
  <div id ="turn" style="text-align:center" class="card-header">
    The Turn is O
  </div>
  <div id ="result" style="text-align:center" class="card-header">
    
  </div>
  <div id = "input" class="card-body">
    <center >
      <input type="text" class="form-control" id="number" ><br>
      <button class="btn btn-outline-secondary" onclick="submit()" type="button">Button</button>
    </center>
  </div>
</div>

	
</div>
<script>
sessionStorage.clear();
let data = sessionStorage.getItem('no');
console.log(data);
function setData(){
document.getElementById("flex1").textContent = sessionStorage.getItem('1');
document.getElementById("flex2").textContent = sessionStorage.getItem('2');
document.getElementById("flex3").textContent = sessionStorage.getItem('3');
document.getElementById("flex4").textContent = sessionStorage.getItem('4');
document.getElementById("flex5").textContent = sessionStorage.getItem('5');
document.getElementById("flex6").textContent = sessionStorage.getItem('6');
document.getElementById("flex7").textContent = sessionStorage.getItem('7');
document.getElementById("flex8").textContent = sessionStorage.getItem('8');
document.getElementById("flex9").textContent = sessionStorage.getItem('9');
}
var i = 0;

function result(){
   var a = sessionStorage.getItem('1');
  var b =  sessionStorage.getItem('2');
  var c =  sessionStorage.getItem('3');
 var d =   sessionStorage.getItem('4');
  var e =  sessionStorage.getItem('5');
  var f =  sessionStorage.getItem('6');
  var g =  sessionStorage.getItem('7');
   var h =sessionStorage.getItem('8');
   var i = sessionStorage.getItem('9');
   if( (a+b+c) == 'XXX' || (d+e+f) == 'XXX' || (g+h+i) == 'XXX' || (a+d+g) == 'XXX' || (b+e+h) == 'XXX' ||(c+f+i) == 'XXX' || (a+e+i) == 'XXX' ||(c+e+g) == 'XXX'){
document.getElementById('result').innerHTML = "X Win";
   }
   else if( (a+b+c) == 'OOO' || (d+e+f) == 'OOO' || (g+h+i) == 'OOO' || (a+d+g) == 'OOO' || (b+e+h) == 'OOO' ||(c+f+i) == 'OOO' || (a+e+i) == 'OOO' ||(c+e+g) == 'OOO') {
document.getElementById('result').innerHTML = "O Win";
   }
   else {
document.getElementById('result').innerHTML = "Draw";
   }
}
function submit() {
    
    if(i>8){
        result();
        document.getElementById("input").style.display = "none";
    }
    var no = document.getElementById('number').value;
    var data = sessionStorage.getItem(no);
    if(data == null){
        if(no <10){
     i++;
        }
        else{
              document.getElementById('result').innerHTML = "Value is Out of Range"; 
        }
    }
    else{
        document.getElementById('result').innerHTML = "Value Already Store";
    }
    document.getElementById('number').value = "";
   
if(i%2 == 0){
    sessionStorage.setItem(no, "X");
    document.getElementById('turn').innerHTML = "O Turn";
}
else {
    sessionStorage.setItem(no, "O");
    document.getElementById('turn').innerHTML = "X Turn";
}
    
setData();
    
}
	</script>

<%@page import="java.sql.*"%>

 
 
 
<%
    
%>
</body>
</html>