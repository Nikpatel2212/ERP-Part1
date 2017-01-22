package Com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.bean.TraineeBean;

import Com.dao.TraineeDao;


/**
 * Servlet implementation class TraineePassword
 */
@WebServlet("/TraineePassword")
public class TraineePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TraineePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

String email = request.getParameter("email_id");
		
		TraineeBean ur=new TraineeBean();
		ur.setEmail(email);

		TraineeDao objpwd= new TraineeDao();
		
		String i = objpwd.Password(email);
		
		System.out.println(i+">>");
		
		List<String> li=new ArrayList<String>();
		final String uname="nikpatel2212@yahoo.com";
		final String pass="kkkk";
		String to=request.getParameter("email_id");
		/*StringTokenizer st= new StringTokenizer(to,",");
		
		while(st.hasMoreTokens())
			li.add(st.nextToken().toString());
	*/	
		Properties pro=new Properties();
		pro.put("mail.smtp.auth", "true");
		pro.put("mail.smtp.starttls.enable", "true");
		pro.put("mail.smtp.host","smtp.gmail.com");
		pro.put("mail.smtp.port", "587");
		
		
		Session session=Session.getInstance(pro,new Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(uname, pass);
			}
		});
		try
		{
			Message mss=new MimeMessage(session);
			mss.setFrom(new InternetAddress(uname));
			for(String stt : li){
			mss.setRecipients(Message.RecipientType.TO,InternetAddress.parse(stt));
			String sub = null;
			mss.setSubject(sub);
			String ms = null;
			mss.setText(ms);
			Transport.send(mss);
			}
			System.out.println("It is Done");
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			
			
		}
		try{

			response.sendRedirect("TraineeForgetPassword.jsp");
			}
			catch(Exception e){
				System.out.println(e);
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
