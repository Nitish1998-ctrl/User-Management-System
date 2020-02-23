package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;


import com.javatpoint.bean.User;
public class UserDao {
    
/*public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/nitish?serverTimezone=UTC","root","");
	}catch(ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e){System.out.println(e);}
	return con;
}
    */
public static int save(User u) throws ClassNotFoundException, SQLException{
	int status=0;
//	try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe","system","system");
		PreparedStatement ps=con.prepareStatement("insert into register(id,name,password,email,sex,country)  values(?,?,?,?,?,?)");
		ps.setInt(1,u.getId());
                ps.setString(2,u.getName());
		ps.setString(3,u.getPassword());
		ps.setString(4,u.getEmail());
		ps.setString(5,u.getSex());
		ps.setString(6,u.getCountry());
            status= ps.executeUpdate();
                
//	}catch(ClassNotFoundException | SQLException e){System.out.println(e);}
	return status;
   
}
public static int update(User u) throws ClassNotFoundException, SQLException{
	int status=0;
	//try{
                   Class.forName("oracle.jdbc.driver.OracleDriver");
	 	 Connection con=DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe","system","system");
            
		//Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update register set  name=?,password=?,email=?,sex=?,country=? where id=?");
		
                ps.setString(1,u.getName());
		ps.setString(2,u.getPassword());
		ps.setString(3,u.getEmail());
		ps.setString(4,u.getSex());
		ps.setString(5,u.getCountry());
                ps.setInt(6, u.getId());
		status=ps.executeUpdate();
//	}catch(ClassNotFoundException | SQLException e){System.out.println(e);}
	return status;
}
public static int delete(User u) throws ClassNotFoundException, SQLException{
	int status=0;
	//try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe","system","system");
            
            
		//Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from register where id=?");
              
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
//	}catch(ClassNotFoundException | SQLException e){System.out.println(e);}

	return status;
}

    /**
     *
     * @return
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    public static List<User> getAllRecords() throws ClassNotFoundException, SQLException{
	List<User> list=new ArrayList<>();
	
//	try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
	       Connection con=DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe","system","system");
            
            
		//Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCountry(rs.getString("country"));
			list.add(u);
		}
//	}catch(ClassNotFoundException | SQLException e){System.out.println(e);}
	return list;
}
public static User getRecordById(int id) throws ClassNotFoundException, SQLException{
	User u=null;
//	try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe","system","system");
            
	//	Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCountry(rs.getString("country"));
		}
//	}catch(ClassNotFoundException | SQLException e){System.out.println(e);}
	return u;
}
}
