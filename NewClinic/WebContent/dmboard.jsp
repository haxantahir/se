<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.io.IOException" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "javax.servlet.ServletException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <title>DOCTOR'S CLINIC SYSTEM</title>

    <!-- Bootstrap Core CSS -->
    <link href="CMS/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="CMS/css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="CMS/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<br>
<br><br><br>

</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <H3>My Account</H3></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
                   <li>
                   <a href="dhome.jsp">Back to Home</a>
                   </li>
                   
                    <li>
                        <a href="index.html">Logout</a>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- /.banner -->
	
 
<%
RequestDispatcher dispatch;
String email = application.getAttribute("ddemail").toString();
            		System.out.println(email);
ResultSet rs =null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	
} catch (ClassNotFoundException e) {
	
	e.printStackTrace();
}
try {
	
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/clinic?","root","root");
	
	Statement stmt = con.createStatement();
	String sql = "select * from reservation where doctoremail='"+email+"'";			
	

	rs = stmt.executeQuery(sql);%>
	<br><br><br>
	          
  <table class="table">
    <thead>
      <tr>
       
        <th>Patient Email</th>
        <th>Patient Name</th>
        <th>Patient Contact NO</th>
        <th>Appointment Date</th>
        <th>Appointment Time</th>
        <th>Status</th>
        <th>Update Appointment</th>
       
        </tr>
        
    </thead>
    <tbody>
    <% 
    
	while(rs.next()){ 
		
		%>
		 <tr>
		 
		 <td> <%=rs.getString("patientemail") %> </td>
		 <td> <%=rs.getString("patientname") %>
		  <td> <%=rs.getString("patientcontactno")%> </td>
		  <td> <%=rs.getString("date") %> </td>
		   <td> <%=rs.getString("reservedtime") %> </td>
		   <td> <%=rs.getString("cancelstate") %> </td>
		   <td><a href="Dsearch?action=cancel&id=<%= rs.getString("idreservation") %>">Cancel </a><a href="Dsearch?action=approve&id=<%= rs.getString("idreservation") %>"> Approve</a></td>
		  
		   </tr>
		 
	<%
	}} catch (SQLException e) {
		
	
	e.printStackTrace();
}
%>

</table>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                   
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; HBD Hassan Bilal Daniyal. All Rights Reserved </p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="CMS/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="CMS/js/bootstrap.min.js"></script>

</body>
</html>