<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="ManirAppointment.model.Patient,ManirAppointment.model.Appointment,ManirAppointment.dao.PatientDAO,ManirAppointment.dao.AppointmentDAO,java.sql.*, java.util.*" %>
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
<%@ page import="ManirAppointment.model.Appointment,ManirAppointment.dao.AppointmentDAO,java.sql.*, java.util.*" %>
    
<!DOCTYPE html>
<html>
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
<body>
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
                <li class="active"><a href="MyAppController?pat_icNum=<%=pat.getPat_icNum()%>">My Appointment</a></li>
                <li class=""><a href="AboutUs2.html">About Us</a></li>
                <li class=""><a href="ContactUs2.html">Contact Us</a></li>
                <li class=""><a href="ProfileController?pat_icnum=<%=pat.getPat_icNum()%>">My Profile</a></li>
				<li class=""><a href="LogoutPatController">Logout</a></li>
              </ul>
            </div>
          </div>
        </div> </nav>    
                
<div class="w3-container w3-white" style="margin-top:80px"> 
<div class="container-fluid" style="width:100%">
            <h1 style="font-family:times; float:center">List of Appointments</h1><br>
            <div class="patient-list-container" >
                <table style="border:1px solid; width: 80%;color:black; background:#e9deed;">
                    <tr style="border:1px solid #bd9cc9; height: 70px; font-family:times; ">
                       <td style=" background:#669999; width:50px; float:center">ID</td>
                       <td style=" background:#669999; width:50px; float:center">IC NUMBER</td>
                       <td style=" background:#669999; width:50px; float:center" >DATE</td>
                       <td style=" background:#669999; width:50px; float:center">TYPE</td>
                       <td style=" background:#669999; width:50px; float:center">STATUS</td>
                       <td style=" background:#669999; width:50px; float:center ">DESCRIPTION</td>
                    </tr> 
           <c:forEach items="${app}" var="a">
                    
                    <tr style="border:1px solid #bd9cc9;">
                          <td ><p>1</p></td><td><p>18/08/2022</p></td>
                        
                        <td>Medical Check-up<c:out value="${p.app_type}"/></td><td>PENDING<c:out value="${p.app_status}"/></td>
                        
                        <td>TBN<c:out value="${p.app_desc}"/></td><td><c:out value="${p.app_queuNum}"/></td>
                        
                     </tr>
                    </c:forEach>
         
                </table>
            </div></div></div>
           
</body>
</html>