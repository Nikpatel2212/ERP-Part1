package Com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Com.bean.AdminLoginBean;
import Com.bean.ClientBean;
import Com.bean.Course;
import Com.bean.Department;
import Com.bean.ExpenseBean;
import Com.bean.GroupBean;
import Com.bean.TraineeBean;
import Com.bean.Userbean;
import Connection.DbConnection;

public class Admindao {
	
	static Connection Con=null;
    DbConnection obj = new DbConnection();	

	public Admindao(){
		
		Con=obj.getconnection();
	}
	
	public ResultSet loginAdmin(AdminLoginBean alb)
	{
		System.out.println("Inside loginuser");
		ResultSet rs = null;
		if(Con==null)
		{
			System.out.println("COnnection is not done");
			
		}
		else
		{
		
		
			String sql= "select * from admin where username='"+alb.getUsername()+"' && password = '"+alb.getPassword()+"'";
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
	public List<Userbean> getcomp()
	{
	List<Userbean> comp=new ArrayList<Userbean>();
		try{
		
		Statement stmt=Con.createStatement();
		String sql="select * from employee";
		System.out.println(sql);
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next())
		{
			Userbean c1=new Userbean();
			c1.setFname(rs.getString(2));
			c1.setlName(rs.getString(3));
			c1.setCity(rs.getString(5));
			c1.setNumber(rs.getString(8));
			c1.setEmail(rs.getString(9));
			c1.setDepartment(rs.getString(14));
			c1.setUname(rs.getString(15));
			comp.add(c1);
			
		}
			System.out.println(comp.size());
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return comp;
	}
	public List<TraineeBean> gettrainee()
	{
	List<TraineeBean> comp=new ArrayList<TraineeBean>();
		try{
		
		Statement stmt=Con.createStatement();
		String sql="select * from trainee";
		System.out.println(sql);
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next())
		{
			
			TraineeBean c1=new TraineeBean();
			c1.setFname(rs.getString(2));
			c1.setlName(rs.getString(3));
			c1.setCity(rs.getString(5));
			c1.setNumber(rs.getString(12));
			c1.setEmail(rs.getString(11));
			c1.setCourse(rs.getString(13));
			c1.setUname(rs.getString(16));
			comp.add(c1);
			
		}
			System.out.println(comp.size());
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return comp;
	}
	public List<ClientBean> getClient()
	{
	List<ClientBean> comp=new ArrayList<ClientBean>();
		try{
		
		Statement stmt=Con.createStatement();
		String sql="select * from client";
		System.out.println(sql);
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next())
		{
			ClientBean c1= new ClientBean();
			
			c1.setFname(rs.getString(3));
			c1.setCname(rs.getString(2));
			c1.setlName(rs.getString(4));
			c1.setNumber(rs.getString(7));
			c1.setEmail(rs.getString(6));
			
			
			comp.add(c1);
			
		}
			System.out.println(comp.size());
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return comp;
	}
	public int insertcourse(Course cr)
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
			String sql="insert into Course(Course_name) values ('"+cr.getCourseName()+"')";
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
	public int insertDepartment(Department cd)
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
			String sql="insert into Department (department_name) values ('"+cd.getDepartmentName()+"')";
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
	
	
	 public List<Course> getCourse()
	   	{
	   		List<Course> course=new ArrayList<Course>();
	   		try{
	   		
	   		Statement stmt=Con.createStatement();
	   		String sql="select Course_id,Course_name from Course";
	   		ResultSet rs=stmt.executeQuery(sql);
	   		while(rs.next())
	   		{
	   			Course c1=new Course();
	   			c1.setCourse_id(rs.getInt(1));
	   			c1.setCourseName(rs.getString(2));
	   			
	   			course.add(c1);
	   		}
	   		}catch(Exception e)
	   		{
	   			e.printStackTrace();
	   		}
	   		return course;
	   	
	   	}
	 
	 public List<Department> getDepartment()
	   	{
	   		List<Department> course=new ArrayList<Department>();
	   		try{
	   		
	   		Statement stmt=Con.createStatement();
	   		String sql="select Department_id,Department_name from Department";
	   		ResultSet rs=stmt.executeQuery(sql);
	   		while(rs.next())
	   		{
	   			Department c1=new Department();
	   			c1.setDepartment_id(rs.getInt(1));
	   			c1.setDepartmentName(rs.getString(2));
	   			
	   			
	   			course.add(c1);
	   		}
	   		}catch(Exception e)
	   		{
	   			e.printStackTrace();
	   		}
	   		return course;
	   	
	   	} 
     
public int deleteCourse(Course cor)
{
	   int i=0;
	if(Con==null)
	{
		System.out.println("deletion is unsuccessful");
		
	}
	try{
	String sql="delete from Course where Course_id="+cor.getCourse_id();
	Statement stmt=Con.createStatement();
	i=stmt.executeUpdate(sql);
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return i;
}


public int deletedepartment(Department cor)
{
   int i=0;
if(Con==null)
{
	System.out.println("deletion is unsuccessful");
	
}
try{
String sql="delete from Department where Department_id="+cor.getDepartment_id();
Statement stmt=Con.createStatement();
i=stmt.executeUpdate(sql);

}catch(Exception e)
{
	e.printStackTrace();
}
return i;
}

public int updateCourse(Course co)
{
	int i=0;
	if(Con!=null)
	{
		System.out.println("not updated");
		
		
	String sql="update Course set Course_name='"+co.getCourseName()+"' where Course_id='"+co.getCourse_id()+"' "; 
	System.out.println(sql);
	
	try
	{
		Statement stmt=Con.createStatement();
	i=stmt.executeUpdate(sql);
	
	
	}catch(SQLException e)
	{
	e.printStackTrace();
	
	}
	return i;
	
}
	else
		return 0;
}
public int insertexpense(ExpenseBean ep,int p)
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
		String sql="insert into outcome(maintenance,rent,paid_salary,internate_bill,phone_bill,electrical,other_expense,total_expense,date) values ('"+ep.getMaintenance()+"','"+ep.getRent()+"','"+ep.getEmpsalary()+"','"+ep.getInternet()+"','"+ep.getPhone()+"','"+ep.getElectric()+"','"+ep.getOther()+"','"+p+"','"+ep.getDob()+"')";
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
public int getNotification()
{
	   int i=0;
	   try{
	   String sql="SELECT count(*) FROM appointment WHERE action =  'uncheck'";
	   Statement stmt=Con.createStatement();
	   ResultSet rs=stmt.executeQuery(sql);
	   if(rs.next())
		   i=rs.getInt(1);
	   
	   System.out.println("i=============="+i);
	   }catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   return i;
}
public ResultSet fetchAppointment() {
	// TODO Auto-generated method stub
	
	ResultSet rs=null;
	try {
		
	Statement stmt=Con.createStatement();
	String sql="SELECT * FROM appointment WHERE action =  'uncheck'";

	System.out.println(sql);
	rs=stmt.executeQuery(sql);
	
	
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return rs;
}
public int adminchangeaction(String saction,int idd) 
{
   int i=0;
   if(Con==null)
	{
		System.out.println("COnnection is not done");
		
	}
	else
	{
		String current = saction;
		String newaction="" ;
		if(current.equals("check")){
			newaction="uncheck";
		}
		else if(current.equals("uncheck")){
			newaction="check";
		}
		
		
		String sql="UPDATE appointment SET action='"+newaction+"' where appointment_id='"+idd+"' ";
		System.out.println(sql);
		try{
		Statement stmt=Con.createStatement();
		i=stmt.executeUpdate(sql);
		}
		catch(Exception e){
			System.out.println(e);
		}
		
	}
   
   return i;
	
}
public List<GroupBean> getGroup()
{
List<GroupBean> comp=new ArrayList<GroupBean>();
	try{
	
	Statement stmt=Con.createStatement();
	String sql="select * from GroupDetails";
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




}
