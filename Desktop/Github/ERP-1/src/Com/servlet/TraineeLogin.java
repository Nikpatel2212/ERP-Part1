package Com.servlet;

import java.io.IOException;

import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.bean.TraineeLoginBean;

import Com.dao.TraineeDao;


/**
 * Servlet implementation class TraineeLogin
 */
@WebServlet("/TraineeLogin")
public class TraineeLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraineeLogin() {
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
		

		
		HttpSession hs;
		RequestDispatcher rd;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("Iinside servlet1");
		
		TraineeLoginBean trl= new TraineeLoginBean();
		trl.setUsername(username);
		trl.setPassword(password);
		System.out.println("Iinside servlet2");
		
		TraineeDao trd=new TraineeDao();
		ResultSet rst = trd.loginTrainee(trl);
		
		try{
		if(rst.next()){
			hs=request.getSession();
			hs.setAttribute("Trainee_username",trl.getUsername() );
			rd = request.getRequestDispatcher("Index.jsp");
			rd.forward(request, response);
		}
		else
			rd = request.getRequestDispatcher("TraineeLogin.jsp");
		rd.forward(request, response);
		}
		catch(Exception e){
			System.out.println(e);
		}
		
	}

}
