package Com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.ExpenseBean;
import Com.dao.Admindao;

/**
 * Servlet implementation class ExpenseServlet
 */
@WebServlet("/ExpenseServlet")
public class ExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExpenseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String dob= request.getParameter("dob");
		String rent= request.getParameter("rent");
		int rentI=Integer.parseInt(rent);
		String maintenance= request.getParameter("maintenance");
		int maintenanceI=Integer.parseInt(maintenance);
		String electric= request.getParameter("electric");
		int electricI=Integer.parseInt(electric);
		String phone=request.getParameter("phonebill");
		int phoneI= Integer.parseInt(phone);
		String internet=request.getParameter("internet");
		int internetI=Integer.parseInt(internet);
		String empsalary= request.getParameter("empsalary");
		int empsalaryI=Integer.parseInt(empsalary);
		String other= request.getParameter("other");
		int otherI= Integer.parseInt(other);
		int j= rentI+maintenanceI+electricI+phoneI+internetI+empsalaryI+otherI;
		ExpenseBean bean=new ExpenseBean();
		bean.setDob(dob);
		bean.setRent(rentI);
		bean.setMaintenance(maintenanceI);
		bean.setElectric(electricI);
		bean.setPhone(phoneI);
		bean.setInternet(internetI);
		bean.setEmpsalary(empsalaryI);
		bean.setOther(otherI);
		
		Admindao ad=new Admindao();
		int i = ad.insertexpense(bean, j);
		System.out.println("daadaddaddadadaddadadadad");
		if(i>0)
		{
			response.sendRedirect("Expense.jsp");
		
		
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
