package utilities;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DbUtility 
{
	
	public static Connection getConnection()throws ClassNotFoundException,SQLException
	{	
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con = DriverManager.getConnection("jdbc:odbc:MyDataBase");			
			return con;
	}
	public static void  closeConnection(Connection con) throws SQLException
	{
		con.close();
		
	}

}



