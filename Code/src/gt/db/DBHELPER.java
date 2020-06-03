package gt.db;

import java.sql.*;

public class DBHELPER {
	public static boolean executeUpdate(String query,Connection cn)
	{
		try
		{
			Statement smt=cn.createStatement();
			smt.executeUpdate(query);
			return(true);
			
		}
		catch(Exception e)
		{
			
			System.out.println(e);
			return(false);
		
		}
		
	}
	public static ResultSet executeQuery(String query,Connection cn)
	{
		try
		{
			Statement smt=cn.createStatement();
			ResultSet rs=smt.executeQuery(query);
			return(rs);
		}
		catch(Exception e)
		{
			System.out.println(e);
			return(null);
		}
		
	}
}
