<%@page import="java.util.Iterator"%>
<%@page import="Com.bean.GroupBean"%>
<%@page import="java.util.List"%>
<%@page import="Com.dao.Userdao"%>
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
String user1=(String)session.getAttribute("username");
		Userdao ur=new Userdao();
		 List<GroupBean> comp = ur.getEmpGroup(user1);
	     Iterator i = comp.iterator();
		%>
		
<jsp:include page="Include/Menu.jsp" ></jsp:include><br>
<h1 style="text-align: center"><u>Groups Details</u></h1>
<div class="CSSTableGenerator" >

<table style="background-color:#aad4ff">
		<tr>
		<td>Group Name</td>
		<td>Course</td>
		<td>Other Details</td>
		
		
	</tr>
	
	 <%
    while (i.hasNext()) 
	{
		GroupBean s1= (GroupBean) i.next();
	
    %>
    
	<tr>
			<td><%=s1.getGroupName() %>
			</td>
			<td><%=s1.getCourse() %>
			</td>
	

			<td><%=s1.getOther() %>
			</td>
			
			
			
</tr>
<%
	}
	%>
		
	</table>
	</div>
	
	<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>