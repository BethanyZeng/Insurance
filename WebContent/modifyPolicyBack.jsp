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
<title>admin modify/change/update policy back-end</title>
</head>
<body>
<%
String pid= request.getParameter("pid");
String pname= request.getParameter("pname");
String pweek = request.getParameter("pweek");
String pmonth = request.getParameter("pmonth");
String pqua = request.getParameter("pqua");
String phalf = request.getParameter("phalf");
String pyear = request.getParameter("pyear");

Connection con = DBConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = null;

String sql = "update policy set pname=?,pweek=?,pmonth=?,pqua=?, phalf=?, pyear=? where pid=?";

try {
	 PreparedStatement pstmt = con.prepareStatement(sql);
       // set parameters for statement
       pstmt.setString(1, pname);
       pstmt.setString(2, pweek);
       pstmt.setString(3, pmonth);
       pstmt.setString(4, pqua);
       pstmt.setString(5, phalf);
       pstmt.setString(6, pyear);
       pstmt.setString(7, pid);
       int i = pstmt.executeUpdate();
       if(i > 0)
       {
       out.print("Record Updated Successfully");
		response.sendRedirect("adminViewPolicy.jsp?msg=sucess");
       }
       else
       {
       out.print("There is a problem in updating Record.");
       }
       

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