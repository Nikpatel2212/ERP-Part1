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
<body style="background-color: #B0E0E6">


<jsp:include page="Include/AdminMenu.jsp" ></jsp:include>

<%
 		
 		String msg= request.getParameter("msg");
 		if(msg!=null){
 		%>
 			<div style="color:yellow;"><%=msg %></div>
 		<%} %>


 <form action="#"  class="register" style="width:400px; height: 550px">
           
           <p></p><p></p> <h1> Project Details</h1>
            <p></p><p></p>
            <fieldset class="row2" style="border-right: none; ">
                <legend>Project Details
                </legend>
                <p>
                    <label>Current Date *
                    </label>
                    
                    <input type="text" required="required"  name="dob"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                <p>
                    <label>Project Name*
                    </label>
                    <input type="text" required="required" name="pname"  class="long"/>
   
                </p>
                <p>
                    <label>Project Description*
                    </label>
                    <textarea rows="4" cols="39" required="required" name="description" class="long"/></textarea>
                    
                </p>
                <p>
                    <label>Project Manager *
                    </label>
                    <input type="text" required="required" name="ManagerName"  class="long"/>
                    
                </p>
                 <p>
                    <label>Team Size
                    </label>
                    <input type="text" required="required" name="size"  class="long"/>
                </p>
               <p>
                    <label>Working Platform*
                    </label>
                    <input type="text" required="required" name="email"  class="long"/>
                    
                </p>
               
                 <p>
                    <label>Estimated time *
                    </label>
                    <input type="text" required="required" name="time"  class="long" />
                    
                </p>
                
                
                <p></p><p></p><p></p>
                <div><button class="button">Reset &raquo;</button></div>
                <div><button class="button">ADD &raquo;</button></div>
                
            </fieldset>
            
            </br></br>
            
            </form>
<jsp:include page="Include/Footer.jsp"></jsp:include>


</body>
</html>