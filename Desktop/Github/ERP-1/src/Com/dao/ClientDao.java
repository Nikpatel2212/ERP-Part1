package Com.dao;

import java.sql.Connection;
import java.sql.Statement;

import Com.bean.ClientBean;
import Connection.DbConnection;

public class ClientDao {

	static Connection Con=null;
    DbConnection obj = new DbConnection();	

	public ClientDao() {
		// TODO Auto-generated constructor stub

		Con=obj.getconnection();
	}

	public int insertClient(ClientBean cb)
	{
		int i=0;
		System.out.println("jjjjj");
		if(Con==null)
		{
			System.out.println("COnnection is not done");
			i=0;
		}
		else
		{System.out.println("jdshfujsdgeuwof");
			String sql="insert into client(company_name,fname,lname,address,email_id,contact_number,c_date,other_detail) values ('"+cb.getCname()+"','"+cb.getFname()+"','"+cb.getlName()+"','"+cb.getAdd()+"','"+cb.getEmail()+"','"+cb.getNumber()+"','"+cb.getDob()+"','"+cb.getOther()+"')";
			System.out.println(sql);
			try{
			Statement stmt=Con.createStatement();
			System.out.println("kkkkkkkkkkkkkkkkk");
			i=stmt.executeUpdate(sql);
			System.out.println("hjjjjjjjjjjjjjjjj");
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
		System.out.println("i  " +i);
		return i;
		
	}
	
}
