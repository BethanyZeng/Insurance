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
<title>admin modify/change/update holder back-end</title>
</head>
<body>
<%
String hid = request.getParameter("hid");

Connection con = DBConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = null;

String sql = "update holder set hauth='yes' where hid=?";


try {
	 PreparedStatement pstmt = con.prepareStatement(sql);
       // set parameters for statement
        pstmt.setString(1, hid);

       
       int i = pstmt.executeUpdate();
       if(i > 0)
       {
       out.print("Record Updated Successfully");
		response.sendRedirect("adminViewHolder.jsp?msg=sucess");
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