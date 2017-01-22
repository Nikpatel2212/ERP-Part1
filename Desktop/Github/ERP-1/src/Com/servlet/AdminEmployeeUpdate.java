package Com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.Userbean;
import Com.dao.Userdao;

/**
 * Servlet implementation class AdminEmployeeUpdate
 */
@WebServlet("/AdminEmployeeUpdate")
public class AdminEmployeeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEmployeeUpdate() {
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
		
		out.println("sfsdd");
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String add= request.getParameter("add");
		String city= request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String email= request.getParameter("email");
		String number= request.getParameter("number");
		
		String dob= request.getParameter("dob");

		String gender= request.getParameter("gender");
		String jod= request.getParameter("jod");
		String designation= request.getParameter("designation");
		String department= request.getParameter("department");
		String cpwd= request.getParameter("cpwd");
		String uname= request.getParameter("uname");
		String pwd= request.getParameter("pwd");
		
		Userbean bean= new Userbean();
		bean.setFname(fname);
		bean.setlName(lname);
		bean.setAdd(add);
		bean.setCity(city);
		bean.setState(state);
		bean.setCountry(country);
		bean.setEmail(email);
		bean.setNumber(number);
		bean.setDob(dob);
		bean.setGender(gender);
		bean.setJod(jod);
		bean.setDesignation(designation);
		bean.setDepartment(department);
		bean.setUname(uname);
		bean.setPwd(pwd);
		bean.setCpwd(cpwd);
		
		
		
		Userdao urd= new Userdao();
		int i = urd.updateRecord(bean);
		System.out.println("daadaddaddadadaddadadadad");
		if(i>0)
		{
			response.sendRedirect("EmployeeDetails.jsp");
		
			out.println("updated successfully..");
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
