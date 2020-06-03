package gt.dao;

import gt.db.DBHELPER;
import java.sql.*;

public class DAO {
	static String provider="jdbc:mysql://localhost:3306/learning";
	static String uid="root";
	static String pwd="1234";

	
	
	public static String addNewRecord(String q)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection cn= DriverManager.getConnection(provider,uid,pwd);
			boolean st = DBHELPER.executeUpdate(q,cn);
			return "yes";
			
		}
		catch(Exception e){
			System.out.println(e);
			return "Error";
		}
				
	}

	public static ResultSet displayRecord(String q)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection cn= DriverManager.getConnection(provider,uid,pwd);
			ResultSet rs = DBHELPER.executeQuery(q,cn);
			return rs;
			
		}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
	}
}
