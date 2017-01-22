package Com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.bean.AppointmentBean;
import Com.bean.Course;
import Com.bean.GroupBean;
import Com.bean.TraineeBean;
import Com.bean.TraineeLoginBean;
import Connection.DbConnection;

public class TraineeDao {
	
	static Connection Con=null;
    DbConnection obj = new DbConnection();	

	public TraineeDao(){
		
		Con=obj.getconnection();
	}
	
	public int insertTrainee(TraineeBean tr)
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
			String sql="insert into trainee(fname,lname,address,city,state,country,gender,dob,education,email_id,contact_number,course,jod,duration,username,password) values ('"+tr.getFname()+"','"+tr.getlName()+"','"+tr.getAdd()+"','"+tr.getCity()+"','"+tr.getState()+"','"+tr.getCountry()+"','"+tr.getGender()+"','"+tr.getDob()+"','"+tr.getEducation()+"','"+tr.getEmail()+"','"+tr.getNumber()+"','"+tr.getCourse()+"','"+tr.getJod()+"','"+tr.getDuration()+"','"+tr.getUname()+"','"+tr.getPwd()+"')";
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
	
	public ResultSet loginTrainee(TraineeLoginBean tlb)
	{
		System.out.println("Inside loginuser");
		ResultSet rs = null;
		if(Con==null)
		{
			System.out.println("COnnection is not done");
			
		}
		else
		{
		
		
			String sql= "select * from trainee where username='"+tlb.getUsername()+"' && password = '"+tlb.getPassword()+"'";
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
	
	public int insertAppointment(AppointmentBean ab)
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
			String sql="insert into appointment(first_name,last_name,address,dob,gender,course,reference,email_id,contact_num,currentdate) values ('"+ab.getFname()+"','"+ab.getLname()+"','"+ab.getAdd()+"','"+ab.getDob()+"','"+ab.getGender()+"','"+ab.getCourse()+"','"+ab.getReference()+"','"+ab.getEmail()+"','"+ab.getNumber()+"','"+ab.getCod()+"')";
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
	
	public ResultSet fetchTraineeRecords(TraineeBean trb) {
		// TODO Auto-generated method stub
		
		
		ResultSet rs=null;
		try {
			
		Statement stmt=Con.createStatement();
			 rs=stmt.executeQuery("select * from trainee where username='"+trb.getUname()+"'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	

	}
	public ResultSet fetchAppointment(int ab) {
		// TODO Auto-generated method stub
		
		
		ResultSet rs=null;
		try {
			
		Statement stmt=Con.createStatement();
			 rs=stmt.executeQuery("select * from appointment where appointment_id='"+ab+"'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	

	}
	
	public int updateTraineeRecord(TraineeBean urb)
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
			String sql="update trainee set fname='"+urb.getFname()+"',lname='"+urb.getlName()+"',address='"+urb.getAdd()+"',city='"+urb.getCity()+"',state='"+urb.getState()+"',country='"+urb.getCountry()+"',gender='"+urb.getGender()+"',dob='"+urb.getDob()+"',education='"+urb.getEducation()+"',email_id='"+urb.getEmail()+"',contact_number='"+urb.getNumber()+"',course='"+urb.getCourse()+"',jod='"+urb.getJod()+"',duration='"+urb.getDuration()+"',password='"+urb.getPwd()+"' where username='"+urb.getUname()+"' ";
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
	
	public static TraineeBean checkusername(String un)
	{
		
		Connection Coon=null;
	    DbConnection obj = new DbConnection();	
	    Coon=obj.getconnection();

		TraineeBean bean=new TraineeBean();
		String sql= "select * from trainee where username='"+un+"'";
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
	
	public List<TraineeBean> getTrainee()
	{
		List<TraineeBean> trainee=new ArrayList<TraineeBean>();
		try{
		
		Statement stmt=Con.createStatement();
		String sql="select trainee_id,fname,lname from trainee";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next())
		{
			TraineeBean tr=new TraineeBean();
			tr.setFname(rs.getString("fname"));
			tr.setlName(rs.getString("lname"));
			
			tr.setTraineeid(rs.getInt(1));
			trainee.add(tr);
			
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return trainee;
	}
	public int insertgroup(GroupBean tr, String num3)
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
			String sql="insert into GroupDetails(group_name,course,trainee_id,other,username) values ('"+tr.getGroupName()+"','"+tr.getCourse()+"','"+num3+"','"+tr.getOther()+"','"+tr.getOwn()+"')";
			System.out.println(sql);
			try{
			Statement stmt=Con.createStatement();
			System.out.println("kkkkkkkkkkkkkkkkk");
			i= stmt.executeUpdate(sql);
			System.out.println("hjjjjjjjjjjjjjjjj");
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
		System.out.println("i  " +i);
		return i;
		
	}
	public String Password(String email)
	{
		
		String pass="";
		ResultSet rs=null;
		try{
			
			Statement stmt = Con.createStatement();	
			
			String str = "select password from trainee where email_id='"+email+"' ";
			
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
