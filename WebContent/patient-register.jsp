<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Register | Manir Health Clinic</title>
   
     <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
     
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

      <!-- NAVBAR -->
<div class="bg-color" style=" min-height: 100px;">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div class="col-md-12">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
              <a class="navbar-brand"><img src="img/logo-clinic.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
            </div>
            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
              <ul class="nav navbar-nav">
                <li class=""><a href="Index.html">Home</a></li>
                <li class=""><a href="AboutUs.html">About Us</a></li>
                <li class=""><a href="ContactUs.html">Contact</a></li>
                <li class=""><a href="login-patient.jsp">Login</a></li>
				<li class="active"><a href="patient-register.jsp">Sign Up</a></li>
              </ul>
            </div>
          </div>
        </div> </nav>
        </div>
        
    <p style="height:1100px"></p>
     

     <div class="login-box" style="margin-top:300px;   width: 70%; background: #006666;">
  <h2>Registration</h2>
              <form class="patient-register-form" method="POST" action="RegisterPatientController" onsubmit="alert('success');">
    <div class="user-box">
      <h4 STYLE="COLOR:WHITE">IC NUMBER</h4>
      <input placeholder="Enter IC Number (e.g 990323115148)" class="ic" type="text" name="pat_icnum" required>
     <h4 STYLE="COLOR:WHITE">NAME</h4>
        <input placeholder="Enter full name as per IC or passport" class="name" type="text" name="pat_name" required>
    <h4 STYLE="COLOR:WHITE">D.O.B</h4>
        <input class="DOB" type="date" name="pat_DOB" required>
    <H4 STYLE="COLOR:WHITE">GENDER</H4>
       <select class="gender" name="pat_gender" required>
                        <option disabled="disabled" selected="selected">-- Choose option --</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
      <br><br>
   <H4 STYLE="COLOR:WHITE">PHONE NUMBER</H4>
        <input placeholder="Enter phone number" class="phone" type="text" name="pat_phonenum"  required>
<H4 STYLE="COLOR:WHITE">ADDRESS</H4>
        <textarea placeholder="Enter Address" class="address" name="pat_address" style="width:60%" required></textarea><br>
		<br><br><H4 STYLE="COLOR:WHITE">PASSWORD</H4>
		<input placeholder="Enter password" class="password" type="password" name="pat_password" required>
       
    </div>
    <button style="background-color:black">
      <span></span>
      <span></span>
      Submit
    </button><br><br><br>
 <p class="message" STYLE="COLOR:WHITE">Already have an account? <a href="login-patient.jsp" STYLE="COLOR:black">Login Account</a></p>
  </form>
</div>
    
     <!--footer-->
  <footer id="footer">
    <div class="top-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-4 marb20">
            <div class="ftr-tle">
              <h4 class="white no-padding">About Us</h4>
            </div>
            <div class="info-sec">
              <p> Klinik Kesihatan Manir,</p><p> Kampung Kubang Jela, Kuala Terengganu,</p>
              <p>Terengganu Darul Iman.</p> <p>Tel: +603-7877 1750</p><p>Fax: +603-8891 4088</p>
            </div>
          </div>
          
          <div class="col-md-4 col-sm-4 marb20">
            <div class="ftr-tle">
              <h4 class="white no-padding">Opening hours</h4>
            </div>
            <div class="info-sec">
              <p> Sunday - Thursday&ensp;: 7.30 a.m. until 5.30 p.m.
              <p> Friday & Saturday &ensp;:	 Closed	 </p>
            </div>	
          </div>
           <div class="col-md-4 col-sm-4 marb20">
            <div class="ftr-tle">
              <h4 class="white no-padding">Quick Links</h4>
            </div>
            <div class="info-sec">
              <ul class="quick-info">
                <li><a href="Index.html"><i class="fa fa-circle"></i>Home</a></li>
                <li><a href="AboutUs.html"><i class="fa fa-circle"></i>About Us</a></li>
                <li><a href="ContactUs.html"><i class="fa fa-circle"></i>Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
     <div class="footer-line">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            © Copyright Medilab Theme. All Rights Reserved
            <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medilab
              -->
              Designed by <a href="https://bootstrapmade.com/">BootstrapMade.com</a>
              <p>Developed by Nur Solehah Mohamad Zulkifli (2020837614)</p>
            </div>
          </div>
        </div>
      </div>
    </div>
</footer>
  <!--/ footer-->

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
 
</body>
</html>