<%@page import="java.sql.ResultSet"%>
<%@page import="Com.dao.TraineeDao"%>
<%@page import="Com.bean.TraineeBean"%>
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
 <script type="text/javascript" src="js/Validation.js"></script>

</head>

<%
String user1=request.getParameter("id");
int k= Integer.parseInt(user1);
       		




TraineeDao trdao=new TraineeDao();
ResultSet rst = trdao.fetchAppointment(k);
while(rst.next()){
%>


<body style="background-color: #B0E0E6">


<jsp:include page="Include/AdminMenu.jsp" ></jsp:include>

 <form action="AppointmentServlet" class="register" style="height: 370px">
           
           <p></p><p></p> <h1> Requested Appointment</h1>
            <p></p><p></p>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>First Name *
                    </label>
                    <input type="text" required="required" name="fname" value="<%=rst.getString("first_name")%>" readonly="readonly" class="long"/>
                    
                </p>
                <p>
                    <label>Last Name *
                    </label>
                    <input type="text" required="required" name="lname" value="<%=rst.getString("last_name")%>" readonly="readonly" class="long"/>
                    
                </p>
                <p>
                    <label>Address
                    </label>
                    <input type="text" required="required" name="add" value="<%=rst.getString("address")%>" readonly="readonly" class="long"/>
                    
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
                    
                    <input type="text" required="required"  name="dob" value="<%=rst.getString("dob")%>" readonly="readonly" id="datepick"/>
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
                    
                    <input type="text" required="required"  name="cod" value="<%=rst.getString("currentdate")%>" readonly="readonly" id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                
                <p>
                    <label>Course *
                    </label>
                    <input type="text" required="required" name="course" value="<%=rst.getString("course")%>" readonly="readonly" class="long"/>
                </p>
                <p>
                    <label> Reference(optional)
                    </label>
                    <input type="text" name="reference" value="<%=rst.getString("reference")%>" readonly="readonly" class="long"/>
                </p>
                
                
                <p>
                    <label>Phone Number *
                    </label>
                    <input type="text" required="required" name="number" value="<%=rst.getString("contact_num")%>" readonly="readonly"  class="long" />
               		
                </p>
                <p>
                    <label>Email ID *
                    </label>
                    <input type="text" required="required" name="email" value="<%=rst.getString("email_id")%>" readonly="readonly" class="long" />
                    
                </p>
                 
                
                <p>
            </p>
           
            </fieldset></br></br></br></br>
            
            </form>



 
            <%
				}
			%>
			
<jsp:include page="Include/Footer.jsp"></jsp:include>
</body>

</html>