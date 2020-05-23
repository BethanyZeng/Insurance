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
<title>holder sign up back-end database</title>
</head>
<body>
<%

String hname= request.getParameter("hname");
String hcard = request.getParameter("hcard");
String hbank = request.getParameter("hbank");
String hbirth = request.getParameter("hbirth");
String hsex = request.getParameter("hsex");
String hoccu = request.getParameter("hoccu");
String hincome = request.getParameter("hincome");
String hadd = request.getParameter("hadd");
String hemail = request.getParameter("hemail");
String hpolicy = request.getParameter("hpolicy");
String hpremium = request.getParameter("hpremium");
String hagent = request.getParameter("hagent");
String hstart = request.getParameter("hstart");
String hdue = request.getParameter("hdue");
String hpwd = request.getParameter("hpwd");

Connection con = DBConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = null;
int hid = 0;
String sql = "INSERT INTO holder (hname,hcard,hbank,hbirth,hsex,hoccu,hincome,hadd,hemail,hpolicy,hpremium,hagent,hstart,hdue,hpwd) "
        + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

try (Connection conn = DBConnector.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);) {
       
       // set parameters for statement
       pstmt.setString(1, hname);
       pstmt.setString(2, hcard);
       pstmt.setString(3, hbank);
       pstmt.setString(4, hbirth);
       pstmt.setString(5, hsex);
       pstmt.setString(6, hoccu);
       pstmt.setString(7, hincome);
       pstmt.setString(8, hadd);
       pstmt.setString(9, hemail);
       pstmt.setString(10, hpolicy);
       pstmt.setString(11, hpremium);
       pstmt.setString(12, hagent);
       pstmt.setString(13, hstart);
       pstmt.setString(14, hdue);
       pstmt.setString(15, hpwd);
       
       int rowAffected = pstmt.executeUpdate();
       if(rowAffected == 1)
       {
           // get candidate id
           rs = pstmt.getGeneratedKeys();
           if(rs.next())
               hid = rs.getInt(1);

       }
       
		response.sendRedirect("adminViewHolder.jsp?msg=sucess");
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