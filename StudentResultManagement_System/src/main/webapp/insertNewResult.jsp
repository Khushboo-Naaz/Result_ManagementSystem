<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
   String rollNo=request.getParameter("rollNo");
   String enggPhysics=request.getParameter("enggP");
   String enggChemistry=request.getParameter("enggC");
   String enggMaths=request.getParameter("enggM");
   String basicEngg=request.getParameter("basicEngg");
   String electricalEngg=request.getParameter("elecEngg");
   String enggPhysicsLab=request.getParameter("enggPL");
   String enggChemistryLab=request.getParameter("enggCL");
 
   ConnectionProvider con=new ConnectionProvider();
   con.s.executeUpdate("insert into result values('"+rollNo+"','"+enggPhysics+"','"+enggChemistry+"','"+enggMaths+"','"+basicEngg+"','"+electricalEngg+"','"+enggPhysicsLab+"','"+enggPhysicsLab+"')");
   response.sendRedirect("adminHome.jsp");
   %>