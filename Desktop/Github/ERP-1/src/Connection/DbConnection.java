package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	
	Connection Con=null;
	public Connection getconnection() {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost:3305/nikul_ERP";
				Con = DriverManager.getConnection(url,"root","" );
				
			} catch (Exception e) {
				System.out.println(e);
				// TODO: handle exception
			}
			
			return Con;
		}
		

}
