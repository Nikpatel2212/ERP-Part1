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


 <form action="ExpenseServlet"  class="register" style="width:400px; height: 580px">
           
           <p></p><p></p> <h1> Expense Details</h1>
            <p></p><p></p>
            <fieldset class="row2" style="border-right: none; ">
                <legend> Details
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
                    <label>Rent *
                    </label>
                    <input type="text"  name="rent"  class="long"/>
                   
                </p>
                <p>
                    <label>Maintenance *
                    </label>
                    <input type="text"  name="maintenance"  class="long"/>
                    
                </p>
                <p>
                    <label>Electric Bill *
                    </label>
                    <input type="text" name="electric" class="long"/>
                   
                </p>
                 <p>
                    <label>Phone Bill*
                    </label>
                    <input type="text"  name="phonebill" class="long"/>
                </p>
               <p>
                    <label>Internet Bill *
                    </label>
                    <input type="text"  name="internet" class="long"/>
                    
                </p>
               
                 <p>
                    <label>Employee Salary *
                    </label>
                    <input type="text"  name="empsalary" class="long" />
                   
                </p>
                <p>
                    <label>Other Expense
                    </label>
                    <input type="text"  name="other" class="long" />
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