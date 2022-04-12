<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
   String course=request.getParameter("course");
   String branch=request.getParameter("branch");
   String rollNo=request.getParameter("rollNo");
   String name=request.getParameter("name");
   String fatherName=request.getParameter("fatherName");
   String gender=request.getParameter("gender");
 
   ConnectionProvider con=new ConnectionProvider();
   con.s.executeUpdate("insert into student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
   response.sendRedirect("adminHome.jsp");
   %>