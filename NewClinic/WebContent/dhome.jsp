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
<title>Welcome Doctor</title>
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
                        <a href="dquery.jsp">Set Availability</a>
                    </li>
                    <li>
                        <a href="dmboard.jsp">Message Board</a>
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
            		
ResultSet rs =null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	
} catch (ClassNotFoundException e) {
	
	e.printStackTrace();
}
try {
	
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/clinic?","root","root");
	System.out.println("connection");
	Statement stmt = con.createStatement();
	String sql = "select * from doctor_table where demail='"+email+"'";			
	
	System.out.println(sql);
	rs = stmt.executeQuery(sql);%>
	<br><br><br>
	<div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Clinic Address</th>
        <th>Starting Date</th>
        <th>Ending Date</th>
        <th>Time </th>
        </tr>
        
    </thead>
    <tbody>
    <% int i=1;
    
	while(rs.next()){ 
		
		%>
		 <tr>
		 <td> <%= i  %> </td>
		  <td> <%=rs.getString("daddress")%> </td>
		  <td> <%=rs.getString("sdate") %> </td>
		  <td> <%=rs.getString("edate") %> </td>
		  <td> <%=rs.getString("time") %> </td>
		  </div>
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
                    <p class="copyright text-muted small">Copyright &copy; HBD Hassan Bilal Daniyal . All Rights Reserved </p>
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