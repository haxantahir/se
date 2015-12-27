<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title></title>

          <script src="CMS/js/google-code-prettify/prettify.js"></script>

	<script src="CMS/js/jquery.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
	<script src="CMS/js/bootstrap-datepicker.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="CMS/css/bootstrap.min.css" rel="stylesheet">
    <link href="CMS/css/bootstrap.css" rel="stylesheet">
<link href="CMS/css/datepicker.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="CMS/css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="CMS/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <script>
  $('.datepicker').datepicker()
  </script>
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
<form role="form" action="Dsearch?action=reserv" method="POST">
    
     <div class="form-group">
      <label for="demail">Docter Email</label>
      <input type="text" readonly="readonly" class="form-control" name="demail" value="<%=request.getParameter("docEmail") %>" >
    </div>
    
    <div class="form-group">
      <label for="dname">Docter Name</label>
      <input type="text" readonly="readonly" class="form-control" name="dname" value="<%=request.getParameter("docName") %>" >
    </div>
    <div class="form-group">
      <label for="clinicaddress">Clinic Address</label>
      <input type="text" readonly="readonly" class="form-control" name="clinicaddress" value="<%=request.getParameter("clinicaddress") %>" >
    </div>
    <div class="form-group">
      <label for="pname"> Patient Name</label>
      <input type="text" required class="form-control" name="pname"  >
    </div>
    <div class="form-group">
      <label for="pemail"> Patient Email</label>
      <input type="text" required class="form-control" name="pemail" value="<%=application.getAttribute("myemail").toString() %>" >
    </div>
    <div class="form-group">
      <label for="pcontact"> Patient Contact</label>
      <input type="text" required class="form-control" name="pcontact" >
    </div>
    
  

    <div class="form-group">
        <label for="Date">Date</label>
        <div class="col-xs-5 date">
            <div class="input-group input-append date" id="datePicker">
                <input type="date" class="form-control" name="date" />
                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
        </div>
    </div>
    
    
     <div class="form-group">
      <label for="time"> Time of Reservation</label>
      <input type="type" required class="form-control" name="time" >
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
   

    <!-- Bootstrap Core JavaScript -->
    <script src="CMS/js/bootstrap.min.js"></script>
    <script src="CMS/js/bootstrap.js"></script>
    <script src="CMS/js/jquery.js"></script>
    
  
</body>
</html>