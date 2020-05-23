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
<title>admin modify/change/update agent back-end</title>
</head>
<body>
<%
String aid= request.getParameter("aid");
String aname= request.getParameter("aname");
String acard = request.getParameter("acard");
String abank = request.getParameter("abank");
String abirth = request.getParameter("abirth");
String asex = request.getParameter("asex");
String aoccu = request.getParameter("aoccu");
String aincome = request.getParameter("aincome");
String aadd = request.getParameter("aadd");
String amob = request.getParameter("amob");
String aemail = request.getParameter("aemail");
String aamout = request.getParameter("aamout");

Connection con = DBConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = null;

String sql = "update agent set aname=?,acard=?,abank=?,abirth=?, asex=?, aoccu=? , aincome=?,aadd=?, amob=?, aemail=?, aamout=? where aid=?";


try {
	 PreparedStatement pstmt = con.prepareStatement(sql);
       // set parameters for statement
       pstmt.setString(1, aname);
       pstmt.setString(2, acard);
       pstmt.setString(3, abank);
       pstmt.setString(4, abirth);
       pstmt.setString(5, asex);
       pstmt.setString(6, aoccu);
       pstmt.setString(7, aincome);
       pstmt.setString(8, aadd);
       pstmt.setString(9, amob);
       pstmt.setString(10, aemail);
       pstmt.setString(11, aamout);
       pstmt.setString(12, aid);
       int i = pstmt.executeUpdate();
       if(i > 0)
       {
       out.print("Record Updated Successfully");
		response.sendRedirect("adminViewAgent.jsp?msg=sucess");
       }
       else
       {
      // out.print("There is a problem in updating Record.");
    	   response.sendRedirect("modifyAgent.jsp?msgg=fails");
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