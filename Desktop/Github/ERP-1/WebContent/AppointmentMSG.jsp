<%@page import="java.sql.ResultSet"%>
<%@page import="Com.dao.Admindao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/tablecss.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/default2.css"/>
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/Date.css"/>

</head>
<body style="background-color:#B0E0E6;">


		<%
		Admindao ad=new Admindao();
        ResultSet rs=ad.fetchAppointment();
		 
							
						%>
		
<jsp:include page="Include/AdminMenu.jsp" ></jsp:include><br>
<h1 style="text-align: center"><u>View Appointment</u></h1>
<div class="CSSTableGenerator" >

<table style="background-color:#aad4ff">
		<tr>
		<td>First Name</td>
		<td>Email-ID</td>
		<td>Contact Number</td>
		<td>Course</td>
		<td>Details</td>
		<td>Action</td>
		
	</tr>
	
	 <%
    while (rs.next()) 
	{
    		
    %>
    
	<tr>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(9) %></td>
			<td><%=rs.getString(10) %></td>
			<td><%=rs.getString(7) %></td>
			<td><a href="AdminViewAppoint.jsp?id=<%=rs.getString(1)%>"><u>Details</u></a></td>
			<td><a href="adminAppointmentChange?saction=<%=rs.getString(12)%>&&id=<%=rs.getString(1)%>"><input type="button" name="button"  value="Check"></a></td>
			
			
			
			
			
</tr>
<%
	}
	%>
		
	</table>
	</div>
	
	<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>