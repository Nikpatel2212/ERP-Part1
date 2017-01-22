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
<form action="EmployeeRegistration" class="register" style="height: 600px" method="post">
           
           <p></p><p></p> <h1> Overall report</h1>
            <p></p><p></p>
            <div style="display: center" class="row1">
             <p>
                    <label>Start date *
                    </label>
                    
                    <input type="text" required="required"  name="dob"  id="datepick"/>
				<script type="text/javascript" src="js/datepickr.js"></script>
				<script type="text/javascript">
					new datepickr('datepick');
				</script>
                </p>
                 <p>
                    <label>End date *
                    </label>
                    
                    <input type="text" required="required"  name="eob"  id="datep"/>
				<script type="text/javascript" src="js/valDate.js"></script>
				<script type="text/javascript">
					new datepickrval('datep');
				</script>
                </p>
                <p><label></label>
                <button class="button">Go &raquo;</button>
                </p>
            </div><br><br><br>
            
            
            
            
            
            
            <fieldset class="row2">
                <legend>Income Details
                </legend>
                <p>
                    <label> Trainees payment
                    </label>
                    <input type="text" required="required" name="Tpayment"  class="long"/>
               		
                </p>
                <p>
                    <label>Clients Payment
                    </label>
                    <input type="text" required="required" name="cpayment"  class="long"/>
                    
                </p>
                <p>
                    <label>Total Income
                    </label>
                    <input type="text" required="required" name="total"  class="long"/>
                    
                </p>
                 </fieldset>
            <fieldset class="row3">
                <legend>Expense Details
                </legend>
                <p>
                    <label>Total Expense
                    </label>
                    <input type="text" required="required" name="totalExpn"  class="long"/>
               		
                </p>
                 <p>
            </p>
            
            </fieldset></br></br></br></br></br></br></br></br></br></br>
            <div style="text-align: center">
            <p>
            <label>
            Profit/ Loss
            </label>
            
            <input type="text" required="required" name="pl"  class="long"/>
            </p>
            </div>
            </form>
<jsp:include page="Include/Footer.jsp"></jsp:include>
</body>
</html>