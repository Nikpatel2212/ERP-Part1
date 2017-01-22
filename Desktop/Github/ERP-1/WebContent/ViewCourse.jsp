<%@page import="java.util.Iterator"%>
<%@page import="Com.bean.Course"%>
<%@page import="java.util.List"%>
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
		Admindao ad  = new Admindao();
		 List<Course> comp = ad.getCourse();
	     Iterator i = comp.iterator();
		%>
		
<jsp:include page="Include/AdminMenu.jsp" ></jsp:include><br>
<h1 style="text-align: center"><u>View Course</u></h1>
<div class="CSSTableGenerator" >

<table style="background-color:#aad4ff">
		<tr>
		<td>Course Name</td>
		<td>Update</td>
		<td>Delete</td>
		
	</tr>
	
	 <%
    while (i.hasNext()) 
	{
		Course s1= (Course) i.next();
	
    %>
    
	<tr>
			<td><%=s1.getCourseName() %></td>
			<td><a href="UpdateCourse.jsp?id=<%=s1.getCourse_id()%>&cName=<%=s1.getCourseName()%>"><u>Update</u></a></td>
			<td><a href="DeleteCourse?id=<%=s1.getCourse_id() %>"><u>Delete</u></a></td>
			
			
			
			
</tr>
<%
	}
	%>
		
	</table>
	</div>
	
	<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>