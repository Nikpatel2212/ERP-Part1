<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
#header {
    background-color:#FAEBD7;
    color: white;
    padding: 10px;
    margin: 10px;
    font-size: 16px;
    border: black;
   
}

</style>
</head>


<body class="page" style="background-color: #B0E0E6">




  <div id="header">
    <h1><a href="Index.jsp"> &nbsp; &nbsp;TECHNOLOGY</a></h1>
    
    <%
				String ustr = (String) session.getAttribute("username");
				String cstr = (String) session.getAttribute("Trainee_username");
			%>
    
    <div id="nav">
      <ul class="menu">
        <li class="dropbtn"><a href="Index.jsp"><b>Home</b></a></li>
        
        <%if(ustr==null && cstr==null){ %>
        <!-- <li class="dropbtn"><a href="#"><b>Register</b></a>
        		<ul>
        				<li><a href="Registration.jsp"><b>Employee</b></a></li>
        				<li><a href="client_registration.jsp"><b>Client</b></a></li>
						<li><a href="student_registration.jsp"><b>Trainee</b></a></li>
        </ul>
        </li> -->
        <li class="dropbtn"><a href="Appointment.jsp"><b>Appointment</b></a></li>
        <li class="dropbtn"><a href="#"><b>Sign In</b></a>
        <ul>
        				<li><a href="UserLogin.jsp"><b>Employee</b></a></li>
						<li><a href="TraineeLogin.jsp"><b>Trainee</b></a></li>
        </ul>
        
        </li>
        <%}else if(ustr!=null){ %>
				<li><a href="EmployeeProfile.jsp"><b>Profile</b></a></li>
				
				<li><a href="#"><b>Attendance</b></a>
				    <ul class="submenu">
				<li><a href="MakeAttedance.jsp"><b>Make Attendance </b></a></li>
				<li><a href="StudentAtdList.jsp"><b>Check Attendance</b></a></li>
				   </ul></li>
				
				
				
				<li><a href="#"><b>Group</b></a>
				    <ul class="submenu">
				<li><a href="GroupDetail.jsp"><b>View Group</b></a></li>
				<li><a href="CreateGroup.jsp"><b>Create Group</b></a></li>
				   </ul></li>
				   <li><a href="EmployeeLogout.jsp"><b>Logout</b></a></li>
				<%}else if(cstr!=null){ %>
				<li><a href="TraineeProfile.jsp"><b>Profile</b></a></li>
				<li><a href="CreateGroup.jsp"><b>Group</b></a></li>
				<li><a href="#"><b>Schedule</b></a></li>
					<!-- <ul class="submenu">

						<li><a href="Create.jsp"><b>CREATE SURVEY</b></a></li>
						<li><a href="Viewsurvey.jsp"><b>VIEW ACTIVE SURVEY</b></a></li>
						<li><a href="Viewdeactivesurvey.jsp"><b>VIEW DEACTIVE SURVEY</b></a></li>
					</ul></li> -->
					<li><a href="TraineeLogout.jsp"><b>LOGOUT</b></a></li>
				<%} %>
        
        <li class="dropbtn"><a href="Aboutus.jsp"><b>About us</b>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
        
      </ul>
    </div>
    <!--end nav-->
  </div>
  <!--end header-->

</body>
</html>