 <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mail</title>
<script src="https://smtpjs.com/v3/smtp.js"></script>
  <script type="text/javascript"> 
  /*
  var from=document.getElementById("frommail");
  var sub=document.getElementById("subject");
  var body=document.getElementById("body");
  
  
    function sendEmail() { 
      Email.send({ 
        Host: "smtp.gmail.com", 
        Username: "mukhil1140@gmail.com", 
        Password: "goodtime@1140", 
        To: 'mukhil99@gmail.com', 
        From: "mukh17cs", 
        Subject: "mail subj", 
        Body:"mail body", 
      }) 
        .then(function (message) { 
          alert("mail sent successfully") 
        }); 
    } */
  </script> 

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
.container input[type="email"],
.container textarea,
.container select{
 width: 100%;
 height:70px;
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

h1{
text-align:center;
font-weight:bold;
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
	
	/*
	//heading
	if(adminmail=="esocadmin@gmail.com" && adminpswrd=="admin"){
		
		var h1=document.createElement("H1");
		var text = document.createTextNode(" Mail to Society ");
		h1.appendChild(text);
		var maindiv=document.getElementById("contentid");
		var mailcard=document.getElementById("mailcard");
		maindiv.insertBefore(h1,mailcard);
		
		var br=document.createElement("br");
		maindiv.insertBefore(br,mailcard);
		
		
		//To
		var to = document.createElement("INPUT");
		to.setAttribute("type", "email");
		to.setAttribute("id", "to");
		to.setAttribute("name", "to");
		to.setAttribute("placeholder", "Mail to");
		var subject=document.getElementById("subject");
		var cardbody=document.getElementById("cardbody");
		cardbody.insertBefore(to,cardbody.firstElementChild);
		
		var To=document.getElementById("to").required=true;
		
	}
	
	else{
		
		var h1=document.createElement("H1");
		var text = document.createTextNode(" Mail to Admin ");
		h1.appendChild(text);
		var maindiv=document.getElementById("contentid");
		var mailcard=document.getElementById("mailcard");
		maindiv.insertBefore(h1,mailcard);
		
		var br=document.createElement("br");
		maindiv.insertBefore(br,mailcard);
		
	}
		
	*/	
		
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


<div class="content" id="contentid" >

<div style="width:100%; height:70px; background-color: #1D3D49" >
<a style="float: right;color:white;padding-top:17px;padding-bottom:20px;padding-right:20px; " href="http://localhost:8080/esociety/index.jsp" onclick="clearSessionStorage()"> 
<button type="button" class="btn btn-info" style="border-radius:5px;fontsize:15px;background-color: #6CACC6">
<i class="fa fa-sign-out"></i> Log out</button></a>
 </div>

<br><br>
<!-- <h1 style="text-align:center"><b>Mail section</b></h1> -->


<% 
String[] members=new String[50];
String[] workers=new String[50];
int f=0,i=0,j=0;

HttpSession session1=request.getSession();
String email=(String) session1.getAttribute("email");
String password=(String) session1.getAttribute("password");


try {
String connectionURL = "jdbc:mysql://localhost:3307/esociety"; 
Connection connection = null; 
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
connection = DriverManager.getConnection(connectionURL, "root", "Pswrd@MySQL");



if(!connection.isClosed())
{
	Statement stmt1=connection.createStatement();
	ResultSet rs1=stmt1.executeQuery("select mailid from members");
	 i=0;
	while(rs1.next()){
		members[i]=rs1.getString("mailid");
		i+=1;
	
		}
	Statement stmt2=connection.createStatement();
	ResultSet rs2=stmt2.executeQuery("select mailid from workers");
	j=0;
	while(rs2.next()){
		workers[j]=rs2.getString("mailid");
		j+=1;
	
		}  
	
}
connection.close();

}
catch(Exception e){
	System.out.println(e);
}

	%>
	
	<%
	if(email.contentEquals("esocadmin@gmail.com") && password.contentEquals("admin")){
		out.println("<h1>Mail to Society</h1><br>");
		
	}
	else{
		out.println("<h1>Mail to Admin</h1><br>");
	}
	%>

<div class="container" id="mailcard" style="width:40%;margin:0 auto;">
  <div class="card" >
         <form action="MailServ" method="post" id="mailform">
        
    <div class="card-header" style='background-color:#397993;color:white;'>Compose your mail </div>
    
    <div class="card-body" id="cardbody" style="font-size:15px;">
    <% 
  
	
	if(email.contentEquals("esocadmin@gmail.com") && password.contentEquals("admin")){
		
		out.println(" <select name=\"to\"  style=\"height:70px; width: 100%\"  required>");
		out.println("<option value='' selected disabled >Mail to</option>");
		
		for(int i1=0;i1<i;i1++){
			out.println("<option value=\""+members[i1]+"\" >"+members[i1]+"</option>");
		}
		for(int j1=0;j1<j;j1++){
			out.println("<option value=\""+workers[j1]+"\" >"+workers[j1]+"</option>");
		}
		
		out.println("</select>");
	}
    
    %>
    	<!--   <input type="email" name="from" id="frommail" style="height: 70px; width: 100%" placeholder=" From- mailid" required> -->
           <input type="text" name="subject" id="subject "style="height: 70px; width: 100%" placeholder=" Subject" required>
       <!--      <br> <input type="text" name="body" id="body" style="height: 150px; width: 100%" placeholder=" Write your mail here..." required><br> -->
        <textarea name="body" id="body" style="height: 150px; width: 100%" placeholder=" Write your mail here..." required></textarea>
        <!--    <br><input type="password" name="gmpswrd" style="height: 40px; width: 100%" placeholder=" Gmail-password" required><br> -->
           
            <input type="submit" value="send" style="height: 70px; width: 100%;" class="btn btn-info" onclick="sendEmail()">
            
    </div> 
    
    
    <div class="card-footer" style="font-size:20px;">
         				 <%
String mailstatus=(String)request.getAttribute("mailstatus");
if(mailstatus!=null){
	out.println("<div class=\"alert alert-dark\"><strong>"+mailstatus+"</strong></div>");
}
%>

</div>

    </form>
  </div>
</div>

<!-- 

<div class="email" style="margin: 0 auto;" >
        
        <form action="" method="post">
            <br><input type="email" name="from" id="frommail" style="height: 40px; width: 100%" placeholder=" From- mailid" required><br>
           <br><input type="text" name="subject" id="subject "style="height: 40px; width: 100%" placeholder=" Subject" required><br>
       <!--      <br> <input type="text" name="body" id="body" style="height: 150px; width: 100%" placeholder=" Write your mail here..." required><br>
       <br> <textarea name="body" id="body" style="height: 150px; width: 100%" placeholder=" Write your mail here..." required></textarea><br>
        <!--    <br><input type="password" name="gmpswrd" style="height: 40px; width: 100%" placeholder=" Gmail-password" required><br> 
           
            <input type="submit" value="send" style="height: 70px; width: 100%;" class="button" onclick="sendEmail()"><br>
            
            </form>
            </div>
            
    -->
   
</div>
</body>
</html>