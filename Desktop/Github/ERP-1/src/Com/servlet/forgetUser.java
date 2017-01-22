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

import Com.bean.Userbean;
import Com.dao.Userdao;



/**
 * Servlet implementation class forgetUser
 */
@WebServlet("/forgetUser")
public class forgetUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgetUser() {
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
		
		Userbean ur=new Userbean();
		ur.setEmail(email);

		Userdao objpwd = new Userdao();
		
		String i = objpwd.Password(email);
		
		System.out.println(i+">>");
		
		List<String> li=new ArrayList<String>();
		final String uname="nikpatel22121992@gmail.com";
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

		response.sendRedirect("ForgetPassword.jsp");
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
