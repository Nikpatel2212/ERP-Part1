<%@page import="Com.dao.Admindao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
#header {
    background-color:#FAEBD7;
    color: white;
    padding: 10px;
    margin: 10px;
    font-size: 16px;
    border: black;
   
}
.sque{
color: green;
padding:2px;
border: 2px solid black;


}

</style>
</head>
<body>

<body class="page" style="background-color: #B0E0E6">
<div class="container-fluied">




  <div id="header">
    <h1><a href="AdminHome.jsp"> &nbsp; &nbsp;TECHNOLOGY</a></h1>
    
    <%
				String ustr = (String) session.getAttribute("AdminUsername");
				
			%>
    
    <div id="nav">
      <ul class="menu">
        
        
        <%if(ustr==null){ %>
        <li class="dropbtn"><a href="AdminHome.jsp"><b>Home</b></a></li>
         <li class="dropbtn"><a href="AdminLogin.jsp"><b>Sign In&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</b></a>
        
        
       
        <%}else if(ustr!=null){ %>
        
        <li class="dropbtn"><a href="#"><b>Register</b></a>
        		<ul>
        				<li><a href="Registration.jsp"><b>Employee</b></a></li>
        				<li><a href="client_registration.jsp"><b>Client</b></a></li>
						<li><a href="student_registration.jsp"><b>Trainee</b></a></li>
        </ul>
        </li>
        
        		<li><a href="#"><b>Manage Details</b></a>
				    <ul class="submenu">
				<li><a href="EmployeeDetails.jsp"><b>Employee Details</b></a></li>
				<li><a href="TraineeDetails.jsp"><b>Trainee Details</b></a></li>
				<li><a href="ClientDetails.jsp"><b>Client Details</b></a></li>
				   </ul></li>
				<li><a href="#"><b>Manage Course</b></a>
				<ul class="submenu">
				<li><a href="AddCourse.jsp"><b>Add course</b></a></li>
				<li><a href="ViewCourse.jsp"><b>View course</b></a></li>	
			   </ul>
				</li>
				<li><a href="#"><b>Group </b></a>
				<ul class="submenu">
				<li><a href="AdminCreateG.jsp"><b>Create Group</b></a></li>
				<li><a href="ManageGroup.jsp"><b>View Groups</b></a></li>	
			   </ul>
				
				</li>
				
				<li><a href="AppointmentMSG.jsp"><b>Appointment <span class="sque"><%=new Admindao().getNotification()%></span> </b></a></li>
				<li><a href="#"><b>General Ledger </b></a>
				<ul class="submenu">
				
				<li><a href="Expense.jsp"><b>Expense</b></a></li>
				<li><a href="profit.jsp"><b>Profit Details</b></a></li>
				<li><a href="TraineePay.jsp"><b>Trainee Payment</b></a></li>
				<li><a href="ClientPay.jsp"><b>Client Payment</b></a></li>
				   </ul>
				</li>
				<li class="dropbtn"><a href="#"><b>Other</b></a>
				<ul class="submenu">
				<li><a href="AddDepartment.jsp"><b>Add Department</b></a></li>
				<li><a href="ViewDepartment.jsp"><b>View Department</b></a></li>
				
				<li><a href="ProjectDetails.jsp"><b>Project Details</b></a></li>	
				<li><a href="ViewProjects.jsp"><b>View Projects</b></a></li>
			   </ul>
				
				</li>
				<li><a href="AdminLogout.jsp"><b>Logout&nbsp; &nbsp;&nbsp; &nbsp;</b></a>
				
				<%} %>
        
       
      </ul>
    </div>
    <!--end nav-->
  </div>
  <!--end header-->
</div>

</body>
</html>