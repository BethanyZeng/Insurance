package action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBConnector {
//	static Connection con;
//	public static Connection getconnection()
//	{
//		try
//		{
//			Class.forName("com.mysql.jdbc.Driver");	
//			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","root");
//			System.out.println("Connection Established"+con);
//		}
//		catch(Exception e)
//		{
//			System.out.println("class error");
//		}
//		return con;
//	}
//	
//    public static Connection getconnection() throws ClassNotFoundException {
//        Connection con = null;  
//        
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "root");
//            System.out.println("Connection Established"+con);
//            
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return con;
//    }
	
    
    public static Connection getConnection() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "insurance?serverTimezone=UTC";
        String driver = "com.mysql.cj.jdbc.Driver";
        String userName = "root";
        String password = "root";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
    } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
     public static void main(String arg[]) throws SQLException{
        DBConnector.getConnection();
        String query="select * from admin";
        Connection conn=DBConnector.getConnection();
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next()) {
       System.out.println(rs.getString("adminid"));
       }
       rs.close();
       stmt.close();
       conn.close();
    }

}