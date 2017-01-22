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
 <link type="text/css" rel="stylesheet" href="styles/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/Date.css"/>
 <script type="text/javascript" src="js/Validation.js"></script>
<title>Insert title here</title>
<script type="text/javascript">

function unameExist(x) {
		
	var xmlhttp;
	if(window.XMLHttpRequest)
		{
		xmlhttp=new XMLHttpRequest();
		}
	else
		{
		xmlhttp=new ActivexObject("Microsoft.XMLHTTP");
		
		}

	var url="validation.jsp?username="+x;
	
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
	
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4)
		document.getElementById("userexist").innerHTML=xmlhttp.responseText;
	
		var ms=xmlhttp.responseText;
	    
	     if(ms.indexOf("exist")!= -1)
    	 {
    	 document.getElementById("urname").value=x;
    	 document.getElementById("urname").focus;
    	 document.getElementById("urname").style.border="thick solid grey";
    	 }

	
	};
	 
	
    
}



</script>


</head>
<body style="background-color: #B0E0E6">



<jsp:include page="Include/AdminMenu.jsp" ></jsp:include>

<%
 		
 		String msg= request.getParameter("msg");
 		if(msg!=null){
 		%>
 			<div style="color:yellow;"><%=msg %></div>
 		<%} %>

 <form action="TraineeRegistration" method="post" style="height: 650px" class="register">
           
           <p></p><p></p> <h1> Trainee Registration</h1>
            <p></p><p></p>
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>First name *
                    </label>
                    <input type="text" required="required" name="fname" onblur="check_firstname(this)" class="long"/>
                    <div style="text-align: center" id="userfirstname"></div>
                </p>
                <p>
                    <label>Last name *
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
                    <label>State
                    </label>
                    <input type="text" required="required" name="state" class="long"/>
                </p>
                
               <p>
                    <label>city
                    </label>
                    <input type="text" required="required" name="city" class="long"/>
                </p>
               <p>
                    <label>Email *
                    </label>
                    <input type="text" required="required" name="email" onblur="check_useremail(this)"  class="long"/>
                    <div style="text-align: center" id="useremail"></div>
                </p>
               
                 <p>
                    <label>Phone Number *
                    </label>
                    <input type="text" required="required" name="number" onblur="check_usermobile(this)" class="long"  />
                   <div style="text-align: center" id="usermobile"><br></div>
                </p>
                
                 
                
                <p>
                    <label>Username *
                    </label>
                    <input type="text" required="required" name="uname" onblur="unameExist(this.value)" id="urname" class="long"/>
                <div style="text-align: center" id="userexist"></div>
                </p>
                <p>
                    <label>Password *
                    </label>
                    <input type="password" required="required" name="pwd" id="password" onblur="check_password(this)" class="long"/>
               		<div style="text-align: center" id="userpass"></div>
                </p>
                <p>
                    <label>Confrom Password 
                    </label>
                    <input type="password" required="required" name="cpwd" onblur="check_confirm_password(this)" class="long"/>
                    <div style="text-align: center" id="usercpass"></div>
                </p>
                
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label>Gender *</label>
                    <input type="radio" name="gender" required="required" value="male"/>
                    <label class="gender">Male</label>
                    <input type="radio" name="gender" required="required" value="female"/>
                    <label class="gender">Female</label>
                </p>
                <p>
                    <label>Birthdate *
                    </label>
                    
                    <input type="text" required="required"  name="dob"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                <p>
                    <label>Education *
                    </label>
                    <input type="text" required="required" name="education" onblur="eduval(this)" class="long"/>
               		<div style="text-align: center" id="eduvalidation"></div>
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
                    <label>Join of date *
                    </label>
                 
				 <input type="text" required="required"  name="jod"  id="datep"/>
				<script type="text/javascript" src="js/valDate.js"></script>
				<script type="text/javascript">
					new datepickrval('datep');
				</script>
                </p>
                <p>
                    <label>Duration *
                    </label>
                    <input type="text" required="required" name="duration" class="long"/>
                </p>
                
                
                <p>
            </p>
            <p></p><p></p><p></p><br><br><br><br><p></p>
             <div><button class="button">Reset &raquo;</button></div>
            <div><button class="button">Register &raquo;</button></div>
                
            </fieldset></br></br></br></br>
            
            </form>
<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>