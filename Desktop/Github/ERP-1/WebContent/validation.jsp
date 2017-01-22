<%@page import="Com.bean.TraineeBean"%>
<%@page import="Com.dao.TraineeDao"%>

<%

String user1=request.getParameter("username");
TraineeBean bean=TraineeDao.checkusername(user1);
if(bean.getUname()!=null)
{
	%> <%=bean.getUname() %> already exist
<%
}else{
	%>
	
	<%
}


%>