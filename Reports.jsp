<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  

<style>
@import url('https://fonts.googleapis.com/css?family=Mukta');
body {
 margin:0;
  font-family: 'Mukta', sans-serif;
  font-size: 20px;
  background-color: #E5F1F5;
           
}
/*side nav*/
.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #0B2732;

  position: fixed;
  height: 100%;
  overflow: auto;
  font-size:20px;
}

.sidebar a {
  display: block;
  color: white;
  padding: 15px;
  font-size:20px;
  font-style:bold;
 
  text-decoration: none;
}
 

.sidebar a:hover:not(.active) {
  background-color: #f2f2f2;
  color: #0B2732;
  
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left; }
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}


/*****card****/
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: center;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 20px 20px 20px 20px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}
.container input[type="text"],
.container input[type="number"],
.container input[type="date"]{
 width: 100%;
    display: block;
    margin:20px 0;
    padding: 15px;
    border: 1px solid #b5b5b5;
    outline: none;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

table{border:1;}


</style>


<script>

function admincheck(){
	
	//var today = new Date();
	//var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
	//document.getElementById("range1").min=String(""+date);
	
	var adminmail=sessionStorage.getItem("adminmail");
	var adminpswrd=sessionStorage.getItem("adminpswrd");
	//alert(adminmail);
	if(adminmail=="esocadmin@gmail.com" && adminpswrd=="admin"){
		
		var a=document.createElement("A");
		a.setAttribute("href", "http://localhost:8080/esociety/CreateEvent.jsp");
		var text = document.createTextNode(" Manage Event ");
		
		var i=document.createElement("i");
		i.setAttribute("class","fa fa-calendar-o");
		
		a.appendChild(i);
		a.appendChild(text);
		
		var sidenav=document.getElementById("mySidenav");
		sidenav.insertBefore(a,sidenav.lastElementChild);
		
		//withdraw
		var a=document.createElement("A");
		a.setAttribute("href", "http://localhost:8080/esociety/Withdraw.jsp");
		var text = document.createTextNode("  Withdraw ");
		
		var i=document.createElement("i");
		i.setAttribute("class","fa fa-money");
		
		a.appendChild(i);
		a.appendChild(text);
		
		var sidenav=document.getElementById("mySidenav");
		sidenav.insertBefore(a,sidenav.lastElementChild);
		
		//payworker
		var a=document.createElement("A");
		a.setAttribute("href", "http://localhost:8080/esociety/Payworker.jsp");
		var text = document.createTextNode("  Pay Worker ");
		
		var i=document.createElement("i");
		i.setAttribute("class","fa fa-credit-card");
		
		a.appendChild(i);
		a.appendChild(text);
		
		var sidenav=document.getElementById("mySidenav");
		sidenav.insertBefore(a,sidenav.lastElementChild);
		}
}

</script>

<script>
function clearSessionStorage(){
	sessionStorage.setItem("adminmail","");
	sessionStorage.setItem("adminpswrd","");
}
</script>


</head>
<body onload="admincheck()">


 <div id="mySidenav" class="sidebar">
 <br><br>
 <!-- <a  href=""> <img src="" style="width:100%; height:60px; padding:10px;"></img></a> -->
<a  href="http://localhost:8080/esociety/Dashboard.jsp"><i class="fa fa-fw fa-home"></i> Home</a> 
<a  href="http://localhost:8080/esociety/Profile.jsp"><i class="fa fa-user"></i> Profile</a> 
 <a href="http://localhost:8080/esociety/Wallet.jsp"><i class="fa fa-google-wallet"></i> Wallet</a>
<a  href="http://localhost:8080/esociety/Setings.jsp"><i class="fa fa-fw fa-wrench"></i> Settings</a>
  <a href="http://localhost:8080/esociety/Reports.jsp"><i class="fa fa-bar-chart"></i> Reports</a>
   <a href="http://localhost:8080/esociety/Feedback.jsp"><i class="fa fa-envelope"></i> Mail</a>
  <a href="http://localhost:8080/esociety/index.jsp" onclick="clearSessionStorage()"><i class="fa fa-sign-out"></i> log out</a>
</div>



<div class="content" >

<div style="width:100%; height:70px; background-color: #1D3D49" >
<a style="float: right;color:white;padding-top:17px;padding-bottom:20px;padding-right:20px; " href="http://localhost:8080/esociety/index.jsp" onclick="clearSessionStorage()"> 
<button type="button" class="btn btn-info" style="border-radius:5px;fontsize:15px;background-color: #6CACC6">
<i class="fa fa-sign-out"></i> Log out</button></a>
 </div>


<br><br>
<h1 style="text-align:center"><b>Report Generation</b></h1>
<br>

 <div class="container" style="width:40%;margin:0 auto;">
  <div class="card" >
    <form name="reports" action="ReportServ" method="post">
        
    <div class="card-header" style='background-color:#397993;color:white;'>Generate reports</div>
    
    <div class="card-body" style="font-size:15px;">
    	  <input type="date" id="range1" name="range1" style="height: 70px; width: 100%" min="" placeholder=" From" required> 
        <input type="date" name="range2" style="height: 70px; width: 100%" placeholder=" To" required>
        <input type="submit" value="generate report" style="height: 70px; width: 100%" class="btn btn-info">
    </div> 
</form>
</div>
 
  </div>
<br><hr><br>
<h3 style="text-align:center">Inward Payments:</h3><br>
            <%
      
    		response.setContentType("text/html");
String output=(String)request.getAttribute("output");  
if(output!="" && output!=null)
out.println(output);
%>
<br><hr><br>
 <h3 style="text-align:center">Outward Payments:</h3><br>
             <%
      
    		response.setContentType("text/html");
String output1=(String)request.getAttribute("output1");  
if(output1!="" && output1!=null)
out.println(output1);
%>


<!--  
<div class="report" style="margin: 0 auto;" >
    
    <form name="reports" action="ReportServ" method="post">
     
         Inward payment details of given date range:<br>
        <br><input type="date" id="range1" name="range1" style="height: 40px; width: 40%" min="" placeholder=" From" required> &nbsp; &nbsp;
        <input type="date" name="range2" style="height: 40px; width: 40%" placeholder=" To" required><br>
        
      
        <br><input type="submit" value="generate report" style="height: 70px; width: 100%" class="button"><br>
        </form>
        <br>
           
            </div>
            
            <h3 style="text-align:center">Inward Payments:</h3>
            <%/*
      
    		response.setContentType("text/html");
String output=(String)request.getAttribute("output");  
if(output!="" && output!=null)
out.println(output);
*/%>
   
   <h3 style="text-align:center">Outward Payments:</h3>
             <%/*
      
    		response.setContentType("text/html");
String output1=(String)request.getAttribute("output1");  
if(output1!="" && output1!=null)
out.println(output1);*/
%>

-->
<br><br><br><br><br>
</div>
</body>
</html>