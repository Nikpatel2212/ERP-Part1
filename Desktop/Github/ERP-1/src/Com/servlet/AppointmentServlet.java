package Com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.AppointmentBean;

import Com.dao.TraineeDao;

/**
 * Servlet implementation class AppointmentServlet
 */
@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out= response.getWriter();
        
       
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String add= request.getParameter("add");
		String dob= request.getParameter("dob");
		String gender= request.getParameter("gender");
		String cod= request.getParameter("cod");
		String course= request.getParameter("course");
		String reference= request.getParameter("reference");
		String email= request.getParameter("email");
		String number= request.getParameter("number");
		
		
		
		AppointmentBean bean=new AppointmentBean();
		bean.setDob(dob);
		bean.setGender(gender);
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setAdd(add);
		bean.setCod(cod);
		bean.setCourse(course);
		bean.setReference(reference);
		bean.setEmail(email);
		bean.setNumber(number);
		
		
		
		
		TraineeDao trd=new TraineeDao();
		int i = trd.insertAppointment(bean);
		System.out.println("daadaddaddadadaddadadadad");
		if(i>0)
		{
			System.out.println("inside the page");
			response.sendRedirect("Appointment.jsp");
		
			out.println("Entered successfully..");
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
