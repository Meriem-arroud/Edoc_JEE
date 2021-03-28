<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <!-- Style -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://kit.fontawesome.com/cbb8fa204a.js" ></script>
  <link  type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link  type="text/css" href="css/admin.css" rel="stylesheet">
  <link rel="stylesheet"  type="text/css" href="css/designe.css"/>
   <!-- Fontawesome -->
  
 </head>
 <body>
 <!-- SideBar -->
 <%@ include file="NavBar.jsp" %>
  <!-- EndOfSideBar -->
  <!-- NavBar -->
 <%@ include file="SideBar.jsp" %>
  <!-- EndOfNavBar -->
  <!--Main content-->
  <div class="mainContent">
        <div class="title padding-15">
            <h2>Ajouter document</h2>
        </div>
        <!--section-->
   <section class="section">
<div class="container"> 
   <div class="row100">
    <div class="col">
     <div class="inputBox">
     <input type="file" id="file" name="fichier" >
     <span class="text">Choisir un fichier</span>
     <span class="line">
     </span>
     </div>
    </div>
   </div>
   <div class="row100">
    <div class="col">
     <div class="inputBox">
     <select name="depart">
     <%
       try{
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet","root","");
    	  String sql="SELECT * FROM departements";
    	  Statement stmt=conn.createStatement();
    	  ResultSet rs=stmt.executeQuery(sql);
    	  while(rs.next())
    	  {
    		  %>
    		 <option value=""><%=rs.getString("name_departement")%></option>
    		  <%
    	  }
       }catch(Exception ex){
    	   out.println(ex.getMessage());
       }
      %>
      
      
     </select>
     <span class="text">Choisir un département</span>
     <span class="line"></span>
     </div>
    </div>
    </div>
    <div class="row100">
    <div class="col">
     <div class="inputBox">
     <select name="type">
   
       <%
       try{
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet","root","");
    	  String sql="SELECT * FROM types";
    	  Statement stmt=conn.createStatement();
    	  ResultSet rs=stmt.executeQuery(sql);
    	  while(rs.next())
    	  {
    		  %>
    		 <option value=""><%=rs.getString("type")%></option>
    		  <%
    	  }
       }catch(Exception ex){
    	   out.println(ex.getMessage());
       }
      %>
      
 
    </select>
     <span class="text">Choisir un type</span>
     <span class="line"></span>
     </div>
    </div>
    </div>
   <div class="row100">
   <div class="col">
   <input type="submit" value="Ajouter">
   </div>
   </div>
</div>
</section>
</div>

 </body>

</html>

