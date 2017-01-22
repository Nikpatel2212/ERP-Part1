<%@page import="Com.dao.Admindao"%>
<%@page import="java.util.Iterator"%>
<%@page import="Com.bean.Course"%>
<%@page import="java.util.List"%>
<%@page import="Com.dao.TraineeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/default2.css"/>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/Date.css"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<title>Insert title here</title>
</head>
<body>

<body style="background-color:#B0E0E6;" >


<jsp:include page="Include/Menu.jsp"></jsp:include>




<div style="height:300px;width: 500px;margin: 0px auto; ">

<form action="#" method="post" class="login" >
			<br>
			<h1 style="font-size:30px;"><u> Make an Attendance</u></h1>
			
			
			 <p>
                    <label><b>Date :</b>
                    </label>
                    <input type="text" required="required"  name="dob"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                <p>
                
                    <label><b>Course :</b>
                    </label>
                   <select required="required" name="course" >
                        <option>
                        </option>
                        
                        <%
							    Admindao dao=new Admindao();
								List<Course> course = dao.getCourse();
								Iterator i = course.iterator();
								while (i.hasNext()) {
									Course c = (Course) i.next();
						%>
						<option value='<%=c.getCourseName()%>'><%=c.getCourseName()%></option>

						<%
							}
						%>
                        
                       
                    </select>
                </p>
                
                 <p>
                
                    <label><b>Group Name :</b>
                    </label>
                    <select name="Gname" style="height:24px">
						<option value="-1" selected>select..</option>
						<option value="Titan">Titan</option>
						<option value="Rock">Champ</option>
						<option value="Champ">Indian</option>
						
					</select>
                </p>
			 <div><button class="button">Get Trainee &raquo;</button></div>
			
				
			</form>
			</div>

<jsp:include page="Include/Footer.jsp"></jsp:include>


</body>
</html>