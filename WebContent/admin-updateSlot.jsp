<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.sql.*" %>
<%@ page import="ManirAppointment.model.Appointment_Slot,ManirAppointment.dao.AppointmentSlotDAO,java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slot Management | Manir Health Clinic</title>
    <link rel="stylesheet" href="css/Style.css">
    <link rel="icon" href="img/favicon.png">
</head>
<body class="register-option-body">


    <!-- NAVBAR -->
    <div class="wrapper" >
    <div class="sidebar"  style="margin-bottom: -5000px; padding-bottom: 5000px;">
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

                <h2>UPDATE SLOT</h2>
                <p>Update quantity of slot and status only.</p>
    <hr>
                <form class="patient-register-form" method="POST" action="UpdateSlotController" onsubmit="alert('success');">
					<label class="name">ID</label><br>
                    <input class="name" type="number" name="appSlot_id"  value="<c:out value="${appSlot.appSlot_id}"/>"readonly><br><br>

                    <label class="name">DATE</label><br>
                    <input class="name" type="text" name="appSlot_date" value="<c:out value="${appSlot.appSlot_date}"/>"required><br><br>

                    <label class="quantity">QUANTITY</label><br>
                    <input class="quantity" type="number" name="appSlot_quantity" value="<c:out value="${appSlot.appSlot_quantity}"/>" required><br><br>
                    
                    <label class="name">TIME</label><br>
                    <input class="name" type="text" name="appSlot_time" value="<c:out value="${appSlot.appSlot_status}"/>"required><br><br>
                    
                    
                    <input type="submit" style="margin-left:250px;border:0px;width:90px; height:40px; color:white; background-color:#3973ac" value="Update">
                </form>
               </div>
               </div></div>
       </body>
</html>