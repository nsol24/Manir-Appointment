<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="ManirAppointment.model.Staff,ManirAppointment.dao.StaffDAO,java.sql.*, java.util.*" %>
<%
    	//prevent caching of jsp pages
    	response.setHeader("Cache-Control","no-cache");
    	response.setHeader("Cache-Control","no-store");
    	response.setHeader("Pragma","no-cache");
    	response.setDateHeader("Expires",0);
    	
    	//get the session and check if session is null, redirect to login page 
    	if(session.getAttribute("sessionId")==null){
    		response.sendRedirect("staff-login.jsp");
    	}
    		
    %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Registration | Manir Health Clinic</title>
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
        <div class="main_content"><br>
            <div class="patient-register-inner-container" style="width:800px">

                <h2>STAFF REGISTRATION</h2>
                <p>Please fill in the form to create an account for new staff.</p>
    <hr>
                <form class="patient-register-form" method="POST" action="RegisterStaffController" onsubmit="alert('success');">

                    <label class="name">Name</label><br>
                    <input placeholder="Enter full name as per IC or passport" class="name" type="text" name="staff_name" required><br><br>

                    <label class="phone">Phone Number</label><br>
                    <input placeholder="Enter phone number" class="phone" type="text" name="staff_phonenum" required><br><br>
                    
                    <label class="name">Email</label><br>
                    <input placeholder="Enter email" class="name" type="text" name="staff_email" required><br><br>
                    
                    
                    <label class="role">Role</label><br>
                    <select class="role" name="staff_role" required>
                        <option disabled="disabled" selected="selected">-- Choose option --</option>
                        <option value="Receptionist">Receptionist</option>
                        <option value="Admin">Admin</option>
                        <option value="Doctor">Doctor</option>
                        <option value="Other">Other</option>
                    </select><br>

					<label class="pasword">Password</label><br>
                    <input placeholder="Enter password" class="password" type="password" name="staff_password" required><br><br>
                    <input class="manager_id" type="hidden" name="manager_id" value="1001"/>" required>
                    
                    
                    <input type="submit" style="margin-left:250px;border:0px;width:90px; height:40px; color:white; background-color:#3973ac" value="Register">
                </form>
               </div>
               </div></div>
       </body>
</html>