<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="ManirAppointment.model.Appointment,ManirAppointment.model.Patient,ManirAppointment.dao.PatientDAO,java.sql.*, java.util.*" %>
<%
    	//prevent caching of jsp pages
    	response.setHeader("Cache-Control","no-cache");
    	response.setHeader("Cache-Control","no-store");
    	response.setHeader("Pragma","no-cache");
    	response.setDateHeader("Expires",0);
    	
    	//get the session and check if session is null, redirect to login page 
    	if(session.getAttribute("sessionICNum")==null)
    		response.sendRedirect("login-patient.jsp");
 %>
 <!--  import class if using JSTL -->
<%@ page import="ManirAppointment.model.Appointment, ManirAppointment.model.Patient,ManirAppointment.dao.PatientDAO,java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${app}" var="p">
                    
                    <tr style="border:1px solid #bd9cc9;">
                        <td ><c:out value="${p.pat_icNum}"/></td><td><c:out value="${p.pat_name}"/></td>
                        
                        <td><c:out value="${p.pat_DOB}"/></td><td><c:out value="${p.pat_gender}"/></td>
                        
                        <td><c:out value="${p.pat_phoneNum}"/></td><td><c:out value="${p.pat_address}"/></td>
                        
                     </tr>
                    </c:forEach>
</body>
</html>