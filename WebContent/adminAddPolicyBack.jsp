<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin add policy back-end</title>
</head>
<body>
<%

String pname= request.getParameter("pname");
String pweek = request.getParameter("pweek");
String pmonth = request.getParameter("pmonth");
String pqua = request.getParameter("pqua");
String phalf = request.getParameter("phalf");
String pyear = request.getParameter("pyear");

Connection con = DBConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = null;
int aid = 0;
String sql = "INSERT INTO policy (pname,pweek,pmonth,pqua,phalf,pyear) "
        + "VALUES(?,?,?,?,?,?)";

try (Connection conn = DBConnector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);) {
       
       // set parameters for statement
       pstmt.setString(1, pname);
       pstmt.setString(2, pweek);
       pstmt.setString(3, pmonth);
       pstmt.setString(4, pqua);
       pstmt.setString(5, phalf);
       pstmt.setString(6, pyear);
       
       int rowAffected = pstmt.executeUpdate();
       if(rowAffected == 1)
       {
           // get candidate id
           rs = pstmt.getGeneratedKeys();
           if(rs.next())
               aid = rs.getInt(1);

       }
       
		response.sendRedirect("adminViewPolicy.jsp?msg=sucess");
   } catch (SQLException ex) {
       System.out.println(ex.getMessage());
   } finally {
       try {
           if(rs != null)  rs.close();
       } catch (SQLException e) {
           System.out.println(e.getMessage());
       }
   }
%>
</body>
</html>