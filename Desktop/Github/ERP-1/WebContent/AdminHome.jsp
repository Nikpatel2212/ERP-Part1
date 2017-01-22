<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WelCome To XYZ</title>
</head>
<body>

 <%
				String ustr = (String) session.getAttribute("AdminUsername");
				
			%>
			
			
<jsp:include page="Include/AdminMenu.jsp"></jsp:include><br><br>

<%if(ustr!=null){ %>
			<div style="text-align:center"><b><u>WelCome <%=ustr %></u></b></div>
			
			<%}%>
<jsp:include page="Include/Slider.jsp"></jsp:include>
<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>