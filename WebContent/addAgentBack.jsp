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
<title>add agent</title>
</head>
<body>
<%

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
String apwd = request.getParameter("apwd");

Connection con = DBConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = null;
int aid = 0;
String sql = "INSERT INTO agent(aname,acard,abank,abirth,asex,aoccu,aincome,aadd,amob,aemail,aamout,apwd) "
        + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";

try (Connection conn = DBConnector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);) {
       
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
       pstmt.setString(12, apwd);
       
       int rowAffected = pstmt.executeUpdate();
       if(rowAffected == 1)
       {
           // get candidate id
           rs = pstmt.getGeneratedKeys();
           if(rs.next())
               aid = rs.getInt(1);

       }
		session.setAttribute("agent", aname);
		response.sendRedirect("adminViewAgent.jsp?msg=sucess");
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