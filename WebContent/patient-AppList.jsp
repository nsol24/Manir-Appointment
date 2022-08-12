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
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Checkup | Manir Health Clinic</title>
    <link rel="stylesheet" href="css/Style.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    
</head>
<body>
<!-- get session -->
	<!-- received from login page -->
	<% String pat_icNum = (String) session.getAttribute("sessionICNum");%>  
	<!-- want to get customer details -->
	<% Patient pat = PatientDAO.getPatientByIcNum(pat_icNum); %>
    <!-- NAVBAR -->
    <% System.out.print(pat_icNum);%>

     <nav class="navbar navbar-expand-lg navbar-white bg-light px-0 py-2" style="background-color:black">
        <div class="container-xl">
            <!-- Logo -->
            <a class="navbar-brand">
                <img src="img/logo-clinic.png" class="h-20" alt="logo">
            </a>
                      
             <div class="navbar-nav mx-lg-auto">
              <a class="nav-item nav-link active" style="font-size:30px;font-family:georgia;letter-spacing: 8px;text-shadow: 2px 2px 4px #bfbfbf; word-spacing: 20px; font-weight:bold; color:#006666">KLINIK KESIHATAN MANIR</a>
            </div></div></nav>
            
              
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-0 py-2">
        <div class="container-xl">
                       
            <!-- Navbar toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                
                <!-- Nav -->
                <div class="navbar-nav mx-lg-auto">
                    <a class="nav-item nav-link" href="patient-homepage.jsp" aria-current="page" style=" float: left; diaplay:block;  border-right:1px sold white; font-size:16px; font-family:times">BOOK APPOINTMENT</a>
                    <p>&ensp;&ensp;&ensp;&ensp;</p><a class="nav-item nav-link" href="ListAppController?pat_icNum=<%=pat.getPat_icNum()%>" style=" font-size:16px; font-family:times">MY APPOINTMENT</a>
                   <p>&ensp;&ensp;&ensp;&ensp;</p> <a class="nav-item nav-link" href="About.html" style="float:left; font-size:16px; font-family:times">ABOUT US</a>
                    <p>&ensp;&ensp;&ensp;&ensp;</p><a class="nav-item nav-link" href="Contact.html" style="float:left; font-size:16px; font-family:times">CONTACT US</a>

                </div>
                
                                
                <!-- Right navigation -->
                <div class="navbar-nav ms-lg-1">
                    <!-- Action -->
                    <div class="d-flex align-items-lg-center mt-0 mt-lg-0">
                       <a class="btn btn-sm btn-primary w-full w-lg-auto" href="ProfileController?pat_icnum=<%=pat.getPat_icNum()%>">My Profile</a>
                        <p>&ensp;</p>
                        <div class="d-flex align-items-lg-center mt-0 mt-lg-0">
                        <a href="LogoutPatController" class="btn btn-sm btn-primary w-full w-lg-auto">
                            Logout
                        </a>
                    </div>
                </div>
</div>
                </div>
            </div>
            </nav>
            <!-- Navbar toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <!-- Nav -->
                <div class="navbar-nav mx-lg-auto">
                      <a class="nav-item nav-link" href="patient-homepage.jsp" aria-current="page">Home</a>
                    <a class="nav-item nav-link active" href="PatientViewController?pat_icNum=<%=pat.getPat_icNum()%>">Account</a>
                    <a class="nav-item nav-link" href="ViewPatAppController?pat_icNum=<%=pat.getPat_icNum()%>">My Appointment</a>
                    <a class="nav-item nav-link" href="CreateAppointmentController?pat_icNum=<%=pat.getPat_icNum()%>">Create Appointment</a>
                    <a class="nav-item nav-link" href="LogoutPatController">Logout</a>
                    
                </div>
                
            </div>
 <div class="main_content"><br><div class="patient-register-inner-container" style="width:1000px">
            <div class="container-fluid" style="width:100%">
            <h1 style="font-family:times; float:center">List of Appointments</h1><br>
            <div class="patient-list-container" >
                <table style="border:1px solid; color:black; background:#e9deed;">
                    <tr style="border:1px solid #bd9cc9; font-family:times; ">
                       <th style=" background:#482d52">ID</th>
                       <th style=" background:#482d52">IC NUMBER</th>
                       <th style=" background:#482d52; width:150px" >DATE</th>
                       <th style=" background:#482d52">TYPE</th>
                       <th style=" background:#482d52">STATUS</th>
                       <th style=" background:#482d52; width:250px ">DESCRIPTION</th>
                    </tr> 
           <c:forEach items="${app}" var="a">
                    
                    <tr style="border:1px solid #bd9cc9;">
                        <td ><c:out value="${a.app_id}"/></td><td><c:out value="${a.app_icnum}"/></td>
                        
                        <td><c:out value="${a.app_date}"/></td><td><c:out value="${a.app_type}"/></td>
                        
                        <td><c:out value="${a.app_status}"/></td><td><c:out value="${a.app_desc}"/></td>
                        
                     </tr>
                    </c:forEach>
         
                </table>
            </div></div></div>
            </div>
</body>
</html>