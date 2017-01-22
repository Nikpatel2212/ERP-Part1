<%@page import="java.util.List"%>
<%@page import="Com.bean.TraineeBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="Com.dao.TraineeDao"%>
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
</head>
<body>

<jsp:include page="Include/AdminMenu.jsp" ></jsp:include>
 <form action="Admincreategroup" class="register" style="height:100%; width: 450px; scrolling:yes">
           
           <p></p><p></p> <h1> Create Group</h1>
            <p></p><p></p>
            <fieldset class="row2" style="border-right: none; ">
                <legend>Fill Details
                </legend>
                
                <p>
                    <label>Course *
                    </label>
                    
                    
                    
                    <select required="required" name="course_name" >
                        <option>
                        </option>
                        
                        <%
							    Admindao dao=new Admindao();
								List<Course> course = dao.getCourse();
								Iterator k = course.iterator();
								while (k.hasNext()) {
									Course c = (Course) k.next();
						%>
						<option value='<%=c.getCourseName()%>'><%=c.getCourseName()%></option>

						<%
							}
						%>
                        
                       
                    </select>
                    
                </p>
                <p><label>
                Select students:</label>
                </p>
                
                <p>
                    <!-- <label>Select students</label> -->
                    
                    
                   
                        
                        <%
                        TraineeDao tro= new TraineeDao();
						List<TraineeBean> trainee= tro.getTrainee();
								Iterator i = trainee.iterator();
								while (i.hasNext()) {
									TraineeBean t=(TraineeBean) i.next();
									
						%><div><label></label>
						<input type="checkbox" name="traineeid" value="<%=t.getTraineeid()%>"><%=t.getFname()%> <%=t.getlName()%><br> 
						
						
						<%-- <option value='<%=t.getFname()%>'><%=t.getlName()%></option> --%>

						<%
							}
						%></div>
                        
                       
                    </select>
                </p>
                
                
                
                
                
                
                <p>
                    <label>Group Name*
                    </label>
                    <input type="text" required="required" name="gname" class="long"/>
                </p>
                <p>
                    <label>
                    </label>
                    <input type="hidden" required="required" name="own" value="<%=(String)session.getAttribute("AdminUsername") %>" class="long"/>
                </p>
                <p>
                    <label>Description
                    </label>
                    <input type="text" required="required" name="description" class="long"/>
                </p>
           
                <p></p><p></p><p></p>
                <div><button class="button">Reset &raquo;</button></div>
                <div><button class="button">Create &raquo;</button></div>
                
            </fieldset>
            
            </br></br>
            
            </form>
            
            
            
            
            
            
            
            
            
            
            
    
            
            
<jsp:include page="Include/Footer.jsp"></jsp:include>

</body>
</html>