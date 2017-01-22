<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/default2.css"/>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />


<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

</head>
<body style="background-color: #B0E0E6">
<jsp:include page="Include/AdminMenu.jsp"></jsp:include>

		
		
		<form action="UpdateCourse" class="login" ><br>
		<h1 style="font-size:30px;"><u> Add Course</u></h1>
		 <p>
                    <label><b>Update Course :</b>
                    </label>
                    <input type="text" required="required"  name="course" value="<%=request.getParameter("cName")%>" class="long"/>
               		<input type="hidden" name="Course_id" value="<%=request.getParameter("id")%>" class="long"/>
                </p>
			
			<div><button class="button">Update &raquo;</button></div>
				</form>
		
	
<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>