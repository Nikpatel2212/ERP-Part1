<%@page import="Com.bean.Department"%>
<%@page import="Com.bean.Course"%>
<%@page import="Com.dao.Admindao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
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
		 List<Department> comp = ad.getDepartment();
	     Iterator i = comp.iterator();
		%>
		
<jsp:include page="Include/AdminMenu.jsp" ></jsp:include><br>
<h1 style="text-align: center"><u>Departments</u></h1>
<div class="CSSTableGenerator" >

<table style="background-color:#aad4ff">
		<tr>
		<td>Department Name</td>
		
		<td>Delete</td>
		
	</tr>
	
	 <%
    while (i.hasNext()) 
	{
		Department s1= (Department) i.next();
	
    %>
    
	<tr>
			<td><%=s1.getDepartmentName() %></td>
			
			<td><a href="DeleteDepartment?id=<%=s1.getDepartment_id() %>"><u>Delete</u></a></td>
			
			
			
			
</tr>
<%
	}
	%>
		
	</table>
	</div>
	
	<jsp:include page="Include/Footer.jsp"></jsp:include>


</body>
</html>