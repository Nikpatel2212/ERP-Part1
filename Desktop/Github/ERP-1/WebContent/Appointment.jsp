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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/default2.css"/>
<link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/Date.css"/>
<script type="text/javascript" src="js/Validation.js"></script>


</head>
<body>

<body style="background-color:#B0E0E6;">

<jsp:include page="Include/Menu.jsp" ></jsp:include>

<%
 		
 		String msg= request.getParameter("msg");
 		if(msg!=null){
 		%>
 			<div style="color:yellow;"><%=msg %></div>
 		<%} %>


 <form action="AppointmentServlet"  style="height: 450px" class="register">
           
           <p></p><p></p> <h1> Request for Appointment</h1>
            <p></p><p></p>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>First Name *
                    </label>
                    <input type="text" required="required" name="fname" onblur="check_firstname(this)" class="long"/>
                    <div style="text-align: center" id="userfirstname"></div>
                </p>
                <p>
                    <label>Last Name *
                    </label>
                    <input type="text" required="required" name="lname" onblur="check_lastname(this)" class="long"/>
                    <div style="text-align: center" id="userlastname"></div>
                </p>
                <p>
                    <label>Address
                    </label>
                    <textarea rows="4" cols="39" required="required" name="add" onblur="check_address(this)" class="long"/></textarea>
                    <div style="text-align: center" id="useraddress"></div>
                </p>
                <p>
                    <label>Gender *</label>
                    <input type="radio" name="gender" required="required" value="male"/>
                    <label class="gender">Male</label>
                    <input type="radio" name="gender" required="required" value="female"/>
                    <label class="gender">Female</label>
                </p>
                <p>
                    <label> Birth Date *
                    </label>
                    
                    <input type="text" required="required"  name="dob"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>  
                
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                
                <p>
                    <label>Current Date *
                    </label>
                    
                    <input type="text" required="required"  name="cod"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                
               <p>
                    <label>Course *
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
                    <label> Reference(optional)
                    </label>
                    <input type="text" name="reference" class="long"/>
                </p>
                
                
                <p>
                    <label>Phone Number *
                    </label>
                    <input type="text" required="required" name="number" onblur="check_usermobile(this)" class="long" />
               		<div style="text-align: center" id="usermobile"><br></div>
                </p>
                <p>
                    <label>Email ID *
                    </label>
                    <input type="text" required="required" name="email" onblur="check_useremail(this)" class="long" />
                    <div style="text-align:center" id="useremail"></div>
                </p>
                 
                
                <p>
            </p>
            <p></p><p></p><p></p>
            <div><button class="button">Reset &raquo;</button></div>
            <div><button class="button">Request &raquo;</button></div>
                
            </fieldset></br></br></br></br>
            
            </form>
<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>