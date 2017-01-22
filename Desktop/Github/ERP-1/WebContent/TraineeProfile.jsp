<%@page import="Com.dao.TraineeDao"%>
<%@page import="Com.bean.TraineeBean"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/default2.css"/>
 <link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
 <script type="text/javascript" src="js/Validation.js"></script>

<title>Insert title here</title>
</head>



<%
String user1=(String)session.getAttribute("Trainee_username");
String msg = request.getParameter("msg");        		
if(!user1.equals(null))
{System.out.println(user1);

}
TraineeBean trb=new TraineeBean();
trb.setUname(user1);

TraineeDao trdao=new TraineeDao();
ResultSet rst = trdao.fetchTraineeRecords(trb);
while(rst.next()){
%>


<body style="background-color: #B0E0E6">


<jsp:include page="Include/Menu.jsp" ></jsp:include>

<%
		String message = request.getParameter("msg");
		if(message!=null){	
	%>
		<div style="color:yellow;"><%=message %></div>
		<br/><br/>
	<%} %>


 <form action="TraineeUpdate" style="height: 650px" class="register">
           
           <p></p><p></p> <h1>Trainee Profile</h1>
            <p></p><p></p>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>First name *
                    </label>
                    <input type="text" required="required" name="fname" value="<%=rst.getString("fname")%>" onblur="check_firstname(this)" class="long"/>
                    <div style="text-align: center" id="userfirstname"></div>
                </p>
                <p>
                    <label>Last name *
                    </label>
                    <input type="text" required="required" name="lname" value="<%=rst.getString("lname")%>" onblur="check_lastname(this)" class="long"/>
                	<div style="text-align: center" id="userlastname"></div>
                </p>
                <p>
                    <label>Address
                    </label>
                    <input type="text" required="required" name="add" value="<%=rst.getString("address")%>" onblur="check_address(this)" class="long"/>
               		<div style="text-align: center" id="useraddress"></div>
                </p>
                
                <p>
                    <label>State
                    </label>
                    <input type="text" required="required" name="state" value="<%=rst.getString("state")%>" class="long"/>
                </p>
               <p>
                    <label>city
                    </label>
                    <input type="text" required="required" name="city" value="<%=rst.getString("city")%>" class="long"/>
                </p>
               
               <p>
                    <label>Email *
                    </label>
                    <input type="text" required="required" name="email" value="<%=rst.getString("email_id")%>" onblur="check_useremail(this)"  class="long"/>
                    <div style="text-align: center" id="useremail"></div>
                </p>
               
                 <p>
                    <label>Phone Number *
                    </label>
                    <input type="text" required="required" name="number" value="<%=rst.getString("contact_number")%>" onblur="check_usermobile(this)" class="long" />
               		<div style="text-align: center" id="usermobile"><br></div>
                </p>
                
                 
                
                <p>
                    <label>Username *
                    </label>
                    <input type="text" required="required" readonly="readonly" name="uname" value="<%=rst.getString("username")%>" class="long"/>
                <div id="userexist"></div>
                </p>
                <p>
                    <label>Password *
                    </label>
                    <input type="password" required="required" name="pwd" value="<%=rst.getString("password")%>" id="password" onblur="check_password(this)" class="long"/>
                	<div style="text-align: center" id="userpass"></div>
                </p>
                <p>
                    <label>Confrom Password 
                    </label>
                    <input type="password" required="required" name="cpwd" value="<%=rst.getString("password")%>" onblur="check_confirm_password(this)" class="long"/>
                	<div style="text-align: center" id="usercpass"></div>
                </p>
                
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label>Gender *</label>
                    <input type="radio" name="gender" required="required" value="<%=rst.getString("gender")%>"/>
                    <label class="gender">Male</label>
                    <input type="radio" name="gender" required="required" value="<%=rst.getString("gender")%>"/>
                    <label class="gender">Female</label>
                </p>
                <p>
                    <label>Birthdate *
                    </label>
                    
                    <input type="text" required="required"  name="dob" value="<%=rst.getString("dob")%>"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                <p>
                <label>Education</label>
                <input type="text" required="required" name="education" value="<%=rst.getString("education")%>" onblur="eduval(this)" class="long" />
                <div style="text-align: center" id="eduvalidation"></div>
                </p>
                <p>
                    <label>course *
                    </label>
                    <input type="text" required="required" name="course" value="<%=rst.getString("course")%>" class="long"/>
                </p>
                <p>
                    <label>Join of date *
                    </label>
                    <input type="text" readonly="readonly" required="required" name="jod" value="<%=rst.getString("jod")%>" id="datep" class="long"/>
                
				<script type="text/javascript" src="js/valDate.js"></script>
				<script type="text/javascript">
					new datepickrval('datep');
				</script>
                
                </p>
                <p>
                    <label>Duration *
                    </label>
                    <input type="text" required="required" readonly="readonly" name="duration" value="<%=rst.getString("duration")%>" class="long"/>
                </p>
                
                
                <p>
            </p>
            <p></p><p></p><p></p><br><br><br><br><p></p>
             <div><button class="button">Reset &raquo;</button></div>
            <div><button class="button">Update &raquo;</button></div>
                
            </fieldset></br></br></br></br>
            
            </form>
            
             
            <%
				}
			%>
<jsp:include page="Include/Footer.jsp"></jsp:include>


</body>
</html>