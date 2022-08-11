<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Login | Manir Health Clinic</title>
    <link rel="stylesheet" href="css/Style.css">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="icon" href="img/favicon.png">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-1 py-3">
        <div class="container-xl">
          <a class="navbar-brand" >
                <img src="img/logo-clinic.png" class="h-20" alt="logo">
            </a>
                     
             <div class="navbar-nav mx-lg-auto">
              <a class="nav-item nav-link active" style="font-size:30px;font-family:georgia;letter-spacing: 8px; word-spacing: 20px; font-weight:bold; color:white">KLINIK KESIHATAN MANIR</a>
            </div>
            <!--  SECOND-->
                  <!-- Action -->
                    <div class="d-flex align-items-lg-center mt-0 mt-lg-0">
                        <a href="patient-register.jsp" class="btn btn-sm btn-primary w-full w-lg-auto"> Register</a><p>&ensp;</p>
                        <div class="d-flex align-items-lg-center mt-0 mt-lg-0">
                        <a href="login-patient.jsp" class="btn btn-sm btn-primary w-full w-lg-auto">Sign In</a>
                    </div>
        	 </div>
         </div>
     </nav>
     <br><br><br>
     
     <div class="patient-register-inner-container">
	<h2 style="font-size:20px">You are either not a registered user </h2><br/><br/><h2>OR</h2> <br/><h2 style="font-size:20px">You entered wrong user name OR password.</h2>
    <br/><br><h3>Please Try Again</h3>
 </div><br><br>
</body>
<footer style="background-color:#004d4d; height:90px; width:auto;">    
<p style="padding:30px; font-family: verdana; color:white; text-align: center;"><i>@Developed by Nur Solehah Mohamad Zulkifli (2020837614)</i>
</footer>
</html>