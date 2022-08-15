<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    	//prevent caching of jsp pages
    	response.setHeader("Cache-Control","no-cache");
    	response.setHeader("Cache-Control","no-store");
    	response.setHeader("Pragma","no-cache");
    	response.setDateHeader("Expires",0);
    	
    	//get the session and check if session is null, redirect to login page 
    	if(session.getAttribute("sessionId")==null)
    		response.sendRedirect("staff-login.jsp");
 %>
	<!--  import class if using JSTL -->
	<%@ page import="ManirAppointment.model.*,ManirAppointment.dao.*,java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slot ManagementT | Manir Health Clinic</title>
    <link rel="stylesheet" href="css/Style.css">
    <link rel="icon" href="img/favicon.png">
</head>
<body class="register-option-body">

    <!-- NAVBAR -->
    
   <div class="wrapper">
    <div class="sidebar" style="margin-bottom: -5000px; padding-bottom: 5000px;">
        <h2>Navigation</h2>
        <ul>
                        <li><a href="admin-account.jsp">My Profile</a></li>
            <li><a href="PatientListController">List of Patients</a></li>
            <li><a href="StaffListController">List of Staff</a></li>
            <li><a href="admin-ListApp.jsp">Manage Appointments</a></li>
            <li><a href="ViewSlotController">Manage Appointment Slot</a></li>
            <li><a href="staff-register.jsp">Create Staff</a></li>
            <li><a href="LogOutStaffController">Log Out</a></li>
        </ul> 
    </div>
    <div class="main_content"><br><div class="patient-register-inner-container" style="width:1000px">
            <div class="container-fluid" style="width:100%">
            <h1 style="font-family:times; float:center">SLOT MANAGEMENT</h1>
            <a href="admin-createSlotWalkIn.jsp"><button  style="background-color: #4d194d; border: none;  color: white;  padding: 4px 5px;  text-align: center;
  text-decoration: none;  display: inline-block; float:right; font-size: 14px;">+ New Slot</button></a>
   <br>  <br>  <br>
            <div class="patient-list-container" style="">
                <table style="border:1px solid; color:black; background:#e9deed;">
                    <tr style="border:1px solid #bd9cc9; font-family:times; ">
                       <th style=" background:#482d52">SLOT ID</th>
                       <th style=" background:#482d52">SLOT TIME</th>
                       <th style=" background:#482d52; width:150px" >DATE</th>
                       <th style=" background:#482d52">SLOT_QUANTITY</th>
                       <th style=" background:#482d52">SLOT_STATUS</th>
                       <th style=" background:#482d52">ACTION</th>
                    </tr> 
           <c:forEach items="${appSlot}" var="s">
                    
                    <tr style="border:1px solid #bd9cc9;">
                        <td ><c:out value="${s.appSlot_id}"/></td><td><c:out value="${s.appSlot_time}"/></td>
                        
                        <td><c:out value="${s.appSlot_date}"/></td><td><c:out value="${s.appSlot_quantity}"/></td>
                        
                        <td><c:out value="${s.appSlot_status}"/></td>
                        <td><a href=RemoveSlotController?appSlot_id=<%="${s.appSlot_id}"%>></a>
                     </tr>
                    </c:forEach>
         
                </table>
            </div>
            </div>
        </div></div>
    </div>
</body>


</html>