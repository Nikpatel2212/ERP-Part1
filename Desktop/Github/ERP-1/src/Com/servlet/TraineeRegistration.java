package Com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.TraineeBean;
import Com.dao.TraineeDao;



/**
 * Servlet implementation class TraineeRegistration
 */
@WebServlet("/TraineeRegistration")
public class TraineeRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraineeRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
PrintWriter out= response.getWriter();
		

		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String add= request.getParameter("add");
		String city= request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String email= request.getParameter("email");
		String number= request.getParameter("number");
		String cpwd= request.getParameter("cpwd");
		String uname= request.getParameter("uname");
		String pwd= request.getParameter("pwd");
		String dob= request.getParameter("dob");
        String edu= request.getParameter("education");
		String gender= request.getParameter("gender");
		String jod= request.getParameter("jod");
		String course= request.getParameter("course");
		String duration= request.getParameter("duration");
		
		
		TraineeBean bean= new TraineeBean();
		bean.setFname(fname);
		bean.setlName(lname);
		bean.setAdd(add);
		bean.setCity(city);
		bean.setState(state);
		bean.setCountry(country);
		bean.setEmail(email);
		bean.setNumber(number);
		bean.setDob(dob);
		bean.setEducation(edu);
		bean.setGender(gender);
		bean.setJod(jod);
		bean.setCourse(course);
		bean.setDuration(duration);
		bean.setUname(uname);
		bean.setPwd(pwd);
		bean.setCpwd(cpwd);
		
		
		
		TraineeDao trd = new TraineeDao();
		int i = trd.insertTrainee(bean);
		System.out.println("daadaddaddadadaddadadadad");
		if(i>0)
		{
			System.out.println("inside the page");
			response.sendRedirect("student_registration.jsp");
		
			out.println("registered successfully..");
		}
	
		
	}

}
