<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="CMS/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="CMS/css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="CMS/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

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
               <a href="#home"> <H3>My Account</H3></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li>
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


   <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
<form role="form" action="DqueryController" method="POST">
	<div class="form-group">
      <label for="dname">Docter Name</label>
      <input type="text" readonly="readonly" class="form-control" name="dname" value="<c:out value="${Dlogin.DName}" />" >
    </div>
    
    <div class="form-group">
      <label for="demail">Docter Email</label>
      <input type="email" readonly="readonly" class="form-control" name="demail" value="<c:out value="${Dlogin.DEmail}" />" >
    </div>
     <div class="form-group">
      <label for="sdate"> Enter the Starting Date</label>
      <input type="date" required class="form-control" name="sdate"  >
    </div>
    <div class="form-group">
      <label for="edate"> Enter the Ending Date</label>
      <input type="date" required class="form-control" name="edate"  >
    </div>
    <div class="form-group">
      <label for="time"> Enter the Time</label>
      <input type="text" required class="form-control" name="time"  >
    </div>
    <div class="form-group">
      <label for="clinicaddress"> Enter the Clinic Address</label>
      <input type="text" required class="form-control" name="clinicaddress" placeholder="Enter your Clinic Address">
    </div>
    
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
               </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->
  
  
  <!-- /.content-section-a -->

   
	<a  name="contact"></a>
    <div class="banner">

        <div class="container">

            <div class="row">
                <div class="col-lg-6">
                    <h2> Connect with Clinic: </h2> 
                </div>
                <div class="col-lg-6">
                    <ul class="list-inline banner-social-buttons">
                        <li>
                            <a href="https://plus.google.com/u/0/102845971904093026495" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/143HaXaN" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->
  
  
      <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                       
                    </ul>
                    <p class="copyright text-muted small">Copyright &copy; HBD Hassan Bilal Daniyal. All Rights Reserved</p>
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