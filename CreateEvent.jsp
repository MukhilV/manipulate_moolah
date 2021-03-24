 <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Events</title>

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
.container input[type="date"],
.container select{
 width: 100%;
    display: block;
    margin:20px 0;
    padding: 15px;
    border: 1px solid #b5b5b5;
    outline: none;
    color:grey;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}


</style>

<script>

function admincheck(){
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

<% 
String[] events=new String[20];
int f=0;
try {
String connectionURL = "jdbc:mysql://localhost:3307/esociety"; 
Connection connection = null; 
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
connection = DriverManager.getConnection(connectionURL, "root", "Pswrd@MySQL");



if(!connection.isClosed())
{
String output="",ename="",edesc="",efrom="",eto="",estatus="";
int efund=0,vault=0,ecollected=0;

//displaying events
Statement stmt=connection.createStatement();
ResultSet rs=stmt.executeQuery("select * from events where status='active'");
out.println("<br><br><h1 style=\"text-align:center\"><b>On going Events</b></h1><br>");

while(rs.next()){
	
	ename=rs.getString("name");
	edesc=rs.getString("desc");
	efrom=rs.getString("from");
	eto=rs.getString("to");
	efund=rs.getInt("fund");
	ecollected=rs.getInt("collected");
	//estatus=rs.getString("status");
	if(efund==0 && ecollected==0){
		PreparedStatement ps3=connection.prepareStatement("update events set status='completed' where name='"+ename+"'");
		ps3.executeUpdate();
		continue;
	}
	//output=output+"<tr><td>"+ename+"</td><td>"+edesc+"</td><td>"+efrom+"</td><td>"+eto+"</td><td>"+efund+"</td><td>"+ecollected+"</td></tr>";
	output=output+"<div class=\"container\">";
	output=output+"<div id=\"accordion\">";
	output=output+"<div class=\"card\">";
	output=output+"<div class=\"card-header\" style='background-color:#1D3D49;'><a class=\"card-link\" data-toggle=\"collapse\" href=\"#collapseOne\" style='color:white'>"+ename+"</a></div>";
	output=output+"<div id=\"collapseOne\" class=\"collapse show\" data-parent=\"#accordion\"><div class=\"card-body\">From: "+efrom+" To: "+eto+"<br>Description: "+edesc+"<br>Collected: "+ecollected+" <br>Total amount required: "+efund+" </div></div></div>";
	output=output+"</div><br>";
	output=output+"</div>";
	events[f]=ename;
	f+=1;
}


out.println(output);

if(f==0){
 	output=output+"<div class=\"container\">";
output=output+"<div id=\"accordion\">";
 	output=output+"<div class=\"card\">";
 	output=output+"<div class=\"card-header\" style='background-color:#1D3D49;'><a class=\"card-link\" data-toggle=\"collapse\" href=\"#collapseOne\" style='color:white'></a></div>";
 	output=output+"<div id=\"collapseOne\" class=\"collapse show\" data-parent=\"#accordion\"><div class=\"card-body\"><h3 style=\"text-align:center\">No Ongoing Events</h3></div></div></div>";
 	output=output+"</div><br>";
 	output=output+"</div>";
 	out.println(output);
}

}
connection.close();

}
catch(Exception ex){
System.out.println(ex);
}
%>
<br><hr><br>
<br><h1 style="text-align:center"><b>Manage Events</b></h1><br>
 <div class="container" style="width:70%;margin:0 auto;">
  <div class="card" >
        <form name="eventform" action="EventServ" method="post" >
        
    <div class="card-header" style='background-color:#397993;color:white;'>Create Events</div>
    
    <div class="card-body" style="font-size:15px;">
    	<input type="text" name="eventname" style="height: 70px; width: 100%" placeholder=" Event name" required>
		<input type="text" name="eventdesc" style="height: 70px; width: 100%" placeholder=" Event description" >
		<input type="date" name="from" style="height: 70px; width: 100%" placeholder=" From" required>
		<input type="date" name="to" style="height: 70px; width: 100%" placeholder=" To" required>
		<input type="number" name="fund" style="height: 70px; width: 100%" placeholder=" Required fund" min="1" required>
		<input type="submit" value="Create Event" style="height: 70px; width: 100%;" class="btn btn-info">
    </div> 
  
    <div class="card-footer" style="font-size:20px;">
  				 <%
String eventstatus=(String)request.getAttribute("eventstatus");
if(eventstatus!=null){
	out.println("<div class=\"alert alert-dark\"><strong>"+eventstatus+"</strong></div>");
}
%>
</div>

    </form>
  </div>
</div>



<!-- 
<div class="createevent" style="margin: 0 auto;" >
<form name="eventform" action="EventServ" method="post" >
<input type="text" name="eventname" style="height: 40px; width: 100%" placeholder=" Event name" required><br>
<br><input type="text" name="eventdesc" style="height: 40px; width: 100%" placeholder=" Event description" ><br>
<br><input type="date" name="from" style="height: 40px; width: 100%" placeholder=" From" required>&nbsp;&nbsp;&nbsp;
<input type="date" name="to" style="height: 40px; width: 100%" placeholder=" To" required><br>
<br><input type="number" name="fund" style="height: 40px; width: 100%" placeholder=" Required fund" min="1" required><br>
<br><input type="submit" value="Create Event" style="height: 70px; width: 100%;" class="button"><br>
</form>
				 <%/*
String eventstatus=(String)request.getAttribute("eventstatus");
if(eventstatus!=null){
	out.println("<font color=green size=4px>"+eventstatus+"</font>");
}
*/%>
</div>
<br><br>

-->

<br><br>

 <div class="container" style="width:70%;margin:0 auto;">
  <div class="card" >
        <form name="modifyform" action="ModifyEventServ" method="post" >
        
    <div class="card-header" style='background-color:#397993;color:white;'>Modify Existing Events</div>
    
    <div class="card-body" style="font-size:15px;">
    	<!--  <input type="text" name="oldeventname" style="height: 40px; width: 100%" placeholder=" Event name" required> -->
    	
    	 <select name="oldeventname"  style="height:70px; width: 100%" required>
				<option value="" selected disabled >Events</option>
				<% for(int i=0;i<f;i++){
					out.println("<option value=\""+events[i]+"\" >"+events[i]+"</option>");
				}
				%>
 			</select>
    	
<input type="text" name="neweventname" style="height: 70px; width: 100%" placeholder=" New Event name" >
<input type="text" name="neweventdesc" style="height: 70px; width: 100%" placeholder=" New Event description" >
<input type="date" name="from" style="height: 70px; width: 100%" placeholder=" From" >
<input type="date" name="to" style="height: 70px; width: 100%" placeholder=" To">
<input type="number" name="fund" style="height: 70px; width: 100%" placeholder=" Required fund" min="1">
<input type="submit" value="Modify Event" style="height: 70px; width: 100%;" class="btn btn-info">
    </div> 
  
    <div class="card-footer" style="font-size:20px;">
				 <%
String modificationstatus=(String)request.getAttribute("modificationstatus");
if(modificationstatus!=null){
	out.println("<div class=\"alert alert-dark\"><strong>"+modificationstatus+"</strong></div>");
}
%>
</div>

    </form>
  </div>
</div>



<!-- 
<h1 style="text-align:center">Modify existing Events</h1>
<div class="modifyevent" style="margin: 0 auto;" >
<form name="modifyform" action="ModifyEventServ" method="post" >
<input type="text" name="oldeventname" style="height: 40px; width: 100%" placeholder=" Event name" required>
<input type="text" name="neweventname" style="height: 40px; width: 100%" placeholder=" New Event name" >
<input type="text" name="neweventdesc" style="height: 40px; width: 100%" placeholder=" New Event description" >
<input type="date" name="from" style="height: 40px; width: 100%" placeholder=" From" >
<input type="date" name="to" style="height: 40px; width: 100%" placeholder=" To">
<input type="number" name="fund" style="height: 40px; width: 100%" placeholder=" Required fund" min="1">
<input type="submit" value="Modify Event" style="height: 70px; width: 100%;" class="btn-btn-info">
</form>
				 <%/*
String modificationstatus=(String)request.getAttribute("modificationstatus");
if(modificationstatus!=null){
	out.println("<font color=green size=4px>"+modificationstatus+"</font>");
}
*/%>

</div>

 -->

<br><br>

 <div class="container" style="width:70%;margin:0 auto;">
  <div class="card" >
        <form name="deleteform" action="DeleteEventServ" method="post" >
        
    <div class="card-header" style='background-color:#397993;color:white;'>Delete Events</div>
    
    <div class="card-body" style="font-size:15px;">
    	
<!-- <input type="text" name="eventname" style="height: 70px; width: 100%" placeholder=" Event name" required> -->

 <select name="eventname"  style="height:70px; width: 100%" required>
				<option value="" selected disabled >Events</option>
				<% for(int i=0;i<f;i++){
					out.println("<option value=\""+events[i]+"\" >"+events[i]+"</option>");
				}
				%>
 			</select>

<input type="submit" value="Delete Event" style="height: 70px; width: 100%;" class="btn btn-info"><br>
    </div> 
  
    <div class="card-footer" style="font-size:20px;">
				 <%
String deletionstatus=(String)request.getAttribute("deletionstatus");
if(deletionstatus!=null){
	out.println("<div class=\"alert alert-dark\"><strong>"+deletionstatus+"</strong></div>");
}
%>
</div>

    </form>
  </div>
</div>




<!--  
<h1 style="text-align:center">Delete existing Events</h1>
<div class="deleteevent" style="margin: 0 auto;" >
<form name="deleteform" action="DeleteEventServ" method="post" >
<input type="text" name="eventname" style="height: 40px; width: 100%" placeholder=" Event name" required><br>
<br><input type="submit" value="Delete Event" style="height: 70px; width: 100%;" class="button"><br>
</form>

				 <%/*
String deletionstatus=(String)request.getAttribute("deletionstatus");
if(deletionstatus!=null){
	out.println("<font color=green size=4px>"+deletionstatus+"</font>");
}
*/%>

</div>
-->
</div>
</body>
</html>