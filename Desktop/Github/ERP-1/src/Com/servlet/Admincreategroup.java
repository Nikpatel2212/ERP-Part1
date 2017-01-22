package Com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.GroupBean;
import Com.dao.TraineeDao;

/**
 * Servlet implementation class Admincreategroup
 */
@WebServlet("/Admincreategroup")
public class Admincreategroup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admincreategroup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		

		String num3="";
		int num=0;
		String tid[]=request.getParameterValues("traineeid");
		String course= request.getParameter("course_name");
		String gname= request.getParameter("gname");
		String own= request.getParameter("own");
		String description= request.getParameter("description");
		for(int i=0;i<tid.length;i++)
        {
           num=Integer.parseInt(tid[i]); 
           num3+= tid[i]+",";
           System.out.println(num3+"ababaabababa");
        }
		GroupBean gr= new GroupBean();
		gr.setCourse(course);
		gr.setGroupName(gname);
		gr.setOther(description);
		gr.setOwn(own);
		
		TraineeDao tr=new TraineeDao();
		
		int l = tr.insertgroup(gr,num3);
		
        
		System.out.println("daadaddaddadadaddadadadad");
		if(l>0)
		{
			System.out.println("inside the page");
			response.sendRedirect("AdminCreateG.jsp");
		
			
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
