<%@page import="Com.bean.Userbean"%>
<%@page import="Com.dao.Userdao"%>
<%@page import="Com.bean.TraineeBean"%>
<%@page import="Com.dao.TraineeDao"%>

<%

String user1=request.getParameter("username");
Userbean bean1= Userdao.checkEmpUsername(user1);

if(bean1.getUname()!=null)
{
	%> <%=bean1.getUname() %> already exist
<%
}else{
	%>
	
	<%
}


%>