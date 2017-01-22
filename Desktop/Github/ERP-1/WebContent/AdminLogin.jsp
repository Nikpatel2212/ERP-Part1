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


<body style="background-color: #B0E0E6" >



<jsp:include page="Include/AdminMenu.jsp"></jsp:include>

<%
	
	String msg = request.getParameter("msg");
	if(msg!=null){
%>
		<div style="text-align: center"><%=msg %></div>
		<%}
		
		%>


<div style="height:300px;width: 500px;margin: 0px auto; ">

<form action="AdminLogin" method="post" class="login" >
			<br>
			<h1 style="font-size:30px;"><u> Admin Login Here</u></h1>
			
			
			 <p>
                    <label><b>Username :</b>
                    </label>
                    <input type="text" required="required"  name="username" class="long"/>
                </p>
                <p>
                
                    <label><b>Password :</b>
                    </label>
                    <input type="password"  name="password"  class="long"/>
                </p>
                
			 <div><button class="button">Login &raquo;</button></div>
			
			<br><br>
			<a href="ForgetPassword" class="topopup">Forgot Password? Click Here</a>
				
			</form>
			</div>




<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>