package Com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.ClientBean;
import Com.dao.ClientDao;

/**
 * Servlet implementation class ClientRegistration
 */
@WebServlet("/ClientRegistration")
public class ClientRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientRegistration() {
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
		        String dob= request.getParameter("dob");
                String cname= request.getParameter("cname");
				String fname= request.getParameter("fname");
				String lname= request.getParameter("lname");
				String add= request.getParameter("add");
				String email= request.getParameter("email");
				String number= request.getParameter("number");
				String other= request.getParameter("other");
				
				
				ClientBean bean= new ClientBean();
				bean.setDob(dob);
				bean.setCname(cname);
				bean.setFname(fname);
				bean.setlName(lname);
				bean.setAdd(add);
				bean.setEmail(email);
				bean.setNumber(number);
				bean.setOther(other);
				
				
				
				ClientDao cd= new ClientDao();
				int i = cd.insertClient(bean);
				System.out.println("daadaddaddadadaddadadadad");
				if(i>0)
				{
					System.out.println("inside the page");
					response.sendRedirect("client_registration.jsp");
				
					out.println("registered successfully..");
				}
		
	}

}
