package Com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.bean.GroupBean;
import Com.bean.Userbean;
import Com.bean.login;
import Connection.DbConnection;


public class Userdao {

	static Connection Con=null;
    DbConnection obj = new DbConnection();	

	public Userdao(){
		
		Con=obj.getconnection();
	}

	public int insertUser(Userbean ur)
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
			String sql="insert into employee(fname,lname,address,city,state,country,contact_number,email_id,dob,gender,jod,designation,department,username,password) values ('"+ur.getFname()+"','"+ur.getlName()+"','"+ur.getAdd()+"','"+ur.getCity()+"','"+ur.getState()+"','"+ur.getCountry()+"','"+ur.getNumber()+"','"+ur.getEmail()+"','"+ur.getDob()+"','"+ur.getGender()+"','"+ur.getJod()+"','"+ur.getDesignation()+"','"+ur.getDepartment()+"','"+ur.getUname()+"','"+ur.getPwd()+"')";
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
	
	public ResultSet loginuser(login log)
	{
		System.out.println("Inside loginuser");
		ResultSet rs = null;
		if(Con==null)
		{
			System.out.println("COnnection is not done");
			
		}
		else
		{
			System.out.println(log.getUsername()+" >>> "+log.getPassword());
		
			String sql= "select * from employee where username='"+log.getUsername()+"' && password = '"+log.getPassword()+"'";
			System.out.println(sql);
			try{
			Statement stmt=Con.createStatement();
			
			rs=stmt.executeQuery(sql);
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
	return rs;
			
	}
	
	public ResultSet fetchRecords(Userbean ur) {
		// TODO Auto-generated method stub
		
		
		ResultSet rs=null;
		try {
			
		Statement stmt=Con.createStatement();
			 rs=stmt.executeQuery("select * from employee where username='"+ur.getUname()+"'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	

	}

	
	public int updateRecord(Userbean urb)
	{
		int  i=0;
		Statement stmt = null;
		try {
			stmt = Con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(stmt!=null)
		{
			String sql="update employee set fname='"+urb.getFname()+"',lname='"+urb.getlName()+"',address='"+urb.getAdd()+"',city='"+urb.getCity()+"',state='"+urb.getState()+"',country='"+urb.getCountry()+"',contact_number='"+urb.getNumber()+"',email_id='"+urb.getEmail()+"',dob='"+urb.getDob()+"',gender='"+urb.getGender()+"',jod='"+urb.getJod()+"',designation='"+urb.getDesignation()+"',department='"+urb.getDepartment()+"',password='"+urb.getPwd()+"' where username='"+urb.getUname()+"' ";
			System.out.println(sql);
		try {
			i=stmt.executeUpdate(sql);
			return i;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
		}
		else 
			return 0;
	}
	public static Userbean checkEmpUsername(String un)
	{
		
		Connection Coon=null;
	    DbConnection obj = new DbConnection();	
	    Coon=obj.getconnection();

		Userbean bean=new Userbean();
		String sql= "select * from employee where username='"+un+"'";
		ResultSet rs = null;
		if(Coon==null)
		{
			System.out.println("COnnection is not done");
			System.out.println("hhhhiiiii");
		}
		else
		{
	
			System.out.println(sql);
			try{
			Statement stmt=Coon.createStatement();
			
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				bean.setUname(rs.getString("username"));
				
			}
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
	return bean;
			
	}
	public List<GroupBean> getEmpGroup(String ab)
	{
	List<GroupBean> comp=new ArrayList<GroupBean>();
		try{
		
		Statement stmt=Con.createStatement();
		String sql="select * from GroupDetails where username='"+ab+"'";
		System.out.println(sql);
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next())
		{
			GroupBean c1=new GroupBean();
			c1.setGroupName(rs.getString(2));
			c1.setCourse(rs.getString(3));
			c1.setOther(rs.getString(6));
			c1.setTraineename(rs.getString(7));
			c1.setTraineeid(rs.getString(5));
			
			
			comp.add(c1);
			
		}
			System.out.println(comp.size());
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return comp;
	}
	public String Password(String email)
	{
		
		String pass="";
		ResultSet rs=null;
		try{
			
			Statement stmt = Con.createStatement();	
			
			String str = "select password from employee where email_id='"+email+"' ";
			
			System.out.println(str);
			
			System.out.println("swswswswsw");
			
			rs=stmt.executeQuery(str);
			
			System.out.println("qwqwqw");
			
		System.out.println(str);
			while(rs.next()){
				
				pass=rs.getString("password");
			}
		
		System.out.println("passs  geted on dao class  "+pass);
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return pass;
	}
		

	
}
