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
    <title>Home | Manir Health Clinic</title>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Link Bootstrap JS and JQuery -->
    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
    </script>
</head>

<body style="background:#004d4d">
<!-- get session -->
	<!-- received from login page -->
	<% String pat_icNum = (String) session.getAttribute("sessionICNum");%>  
	<!-- want to get customer details -->
	<% Patient pat = PatientDAO.getPatientByIcNum(pat_icNum); %>
    <!-- header -->
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
	
   
            <div class="patient-register-inner-container">
                <img src="img/logo.png" alt="">
                <h2>Medical Check-up Booking</h2>
                <p>Please fill in this form to book your appointment slot. Please attend the appointment booked at morning session (The latest at 10:00) to avoid long queue. </p>
    <hr>
                <form class="patient-register-form" method="POST" action="BookAppointmentController" onsubmit="alert('success');">
			
                    <label class="ic">IC Number</label><br>
                    <input placeholder="Enter IC Number (e.g 990323115148)" class="ic" type="text" name="pat_icnum" required><br><br>
					
					
					<label class="dob">Date</label><br>
                    <select class="dob" name="app_date" required>
                        <option disabled="disabled" selected="selected">-- Choose option --</option>
                        
                        <option value="16/08/2022">16/08/2022</option>
                        <option value="18/08/2022">18/08/2022</option>
                        <option value="22/08/2022">22/08/2022</option>
                        <option value="25/08/2022">25/08/2022</option>
                        <option value="29/08/2022">29/08/2022</option>
                     
                    </select><br>
                    
                     <label class="app_type">Type</label><br>
                    <input placeholder="Medical Checkup" class="app_type" type="text" name="app_type" value="Medical Checkup" readonly/><br>
					
					<input class="app_status" type="hidden" name="app_status" value="Pending"/><br>
					
					<input class="app_desc" type="hidden" name="app_desc" value="TBN"/><br>
					<input class="queue_num" type="hidden" name="queueNum" value="0"/><br>
                    
					<input class="appSlot_id" type="hidden" name="appSlot_id" value="14"/><br>
                    
					<input class="staff_id" type="hidden" name="staff_id" value="1001"/><br>
                    

                   
                    <input type="submit" style="margin-left:250px;border:0px;width:90px; height:40px; color:white; background-color:#3973ac" value="Submit">
                </form>
                
            </div></div>
       </body>
<footer style="background-color:#004d4d; height:90px; width:auto;">    
<p style="padding:30px; font-family: verdana; color:white; text-align: center;"><i>@Developed by Nur Solehah Mohamad Zulkifli (2020837614)</i>
</footer>
</html>