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
<title>Insert title here</title>
</head>
<body>


<jsp:include page="Include/Menu.jsp" ></jsp:include>
 <form action="Registration" class="register" style="width:400px">
           
           <p></p><p></p> <h1> Client Profile</h1>
            <p></p><p></p>
            <fieldset class="row2" style="border-right: none; ">
                <legend>Personal Details
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
                    <label>Company Name *
                    </label>
                    <input type="text" required="required" name="cname" class="long"/>
                </p>
                <p>
                    <label>Firstname *
                    </label>
                    <input type="text" required="required" name="fname" class="long"/>
                </p>
                <p>
                    <label>Lastname *
                    </label>
                    <input type="text" required="required" name="lname" class="long"/>
                </p>
                <p>
                    <label>Address
                    </label>
                    <input type="text" required="required" name="add" class="long"/>
                </p>
               
               
               <p>
                    <label>Email *
                    </label>
                    <input type="text" required="required" name="email"  class="long"/>
                    
                </p>
               
                 <p>
                    <label>Phone Number *
                    </label>
                    <input type="text" required="required" name="number" />
                </p>
                
                 
                
                <p>
                    <label>Other Detail *
                    </label>
                    <input type="text" required="required" name="other"  class="long"/>
               
                </p>
                <p></p><p></p><p></p>
                <div><button class="button">Reset &raquo;</button></div>
                <div><button class="button">Update &raquo;</button></div>
                
            </fieldset>
            
            </br></br>
            
            </form>
<jsp:include page="Include/Footer.jsp"></jsp:include>


</body>
</html>