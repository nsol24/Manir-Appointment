<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="ManirAppointment.model.Patient,ManirAppointment.dao.PatientDAO,java.sql.*, java.util.*" %>
    <%
    	//prevent caching of jsp pages
    	response.setHeader("Cache-Control","no-cache");
    	response.setHeader("Cache-Control","no-store");
    	response.setHeader("Pragma","no-cache");
    	response.setDateHeader("Expires",0);
    	
    	//get the session and check if session is null, redirect to login page 
    	if(session.getAttribute("sessionICNum")==null){
    		response.sendRedirect("login-patient.jsp");
    	}
    		
    %>
    <!--  import class if using JSTL -->
<%@ page import="ManirAppointment.model.Patient,ManirAppointment.dao.PatientDAO,java.sql.*, java.util.*" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Profile | Manir Health Clinic</title>
   <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
   
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
</head>

<body style="background:#004d4d">
<!-- get session -->
	<!-- received from login page -->
	<% String pat_icNum = (String) session.getAttribute("sessionICNum");%>  
	<!-- want to get customer details -->
	<% Patient pat = PatientDAO.getPatientByIcNum(pat_icNum); %>
    <!-- NAVBAR -->
    <% System.out.print(pat_icNum);%>

     
            
           <nav class="navbar navbar-default navbar-fixed-top"  style="background-color: RGBA(13, 70, 83, 0.78)">
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
                <li class=""><a href="patient-homepage.jsp">Book Appointment</a></li>
                <li class=""><a href="MyAppController?pat_icNum=<%=pat.getPat_icNum()%>">My Appointment</a></li>
                <li class=""><a href="AboutUs2.html">About Us</a></li>
                <li class=""><a href="ContactUs2.html">Contact Us</a></li>
                <li class="active"><a href="ProfileController?pat_icnum=<%=pat.getPat_icNum()%>">My Profile</a></li>
				<li class=""><a href="LogoutPatController">Logout</a></li>
              </ul>
            </div>
          </div>
        </div> </nav>
	
<br><br>
<div class="w3-container w3-white" style="margin-top:50px">
    <div class="row">
    <div class="col-md-3 border-right">
    </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
            <form action="ProfileController" method="post" style="font-size:30px" onsubmit="alert('success');">
                <div class="d-flex justify-content-between align-items-center mb-3">
                 
                    <h3 class="text-center" style="margin-left:10px; font-family:times">PROFILE SETTINGS</h3>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Name</label>
                    
                <input type="text"  class="form-control"  name="pat_name" value="<%=pat.getPat_name()%>"readonly><br></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">IC Number</label>
                     <input type="text" class="form-control" name="pat_icNum" value="<%=pat.getPat_icNum()%>" readonly><br>
                </div></div>
                 <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Gender</label>
                    <input type="text"  class="form-control" name="pat_gender" value="<%=pat.getPat_gender()%>" readonly> <br>
                    </div>
                    
                    <div class="col-md-12"><label class="labels">Date of Birth</label>
                   <input type="date" name="pat_DOB" class="form-control" value="<%=pat.getPat_DOB()%>" readonly> <br></div>
                    
                
                    <div class="col-md-12"><label class="labels">Mobile Number</label>
                    <input type="number"  class="form-control" name="pat_phoneNum" value="0<%=pat.getPat_phoneNum()%>"> <br>
                    </div>
                    
                    <div class="col-md-12"><label class="labels">Address</label>
                    <input type="text" class="form-control" name="pat_address" value="<%=pat.getPat_address()%>"> <br></div>
                   </div>

                <br>
                <div class="mt-5 text-center">
                <button class="btn btn-primary profile-button" type="submit">Save Profile</button></div><br><br><br>
                </form>
            </div>
        </div>
    </div>
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
                <li><a href="patient-homepage.jsp"><i class="fa fa-circle"></i>Home</a></li>
                <li><a href="AboutUs2.html"><i class="fa fa-circle"></i>About Us</a></li>
                <li><a href="ContactUs2.html"><i class="fa fa-circle"></i>Contact</a></li>
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