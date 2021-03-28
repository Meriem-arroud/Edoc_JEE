<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
 <head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Affichage des documents</title>
  <!-- Style -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" >
  <link rel="stylesheet"  type="text/css" href="css/affichage.css"/>
  <link href="css/admin.css" rel="stylesheet">
   <!-- Fontawesome -->
    <script type="text/javascript" src="https://kit.fontawesome.com/cbb8fa204a.js" ></script>

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
        <!--section-->
        <section class="section">
        <div class="title padding-15">
                <h2>Documents</h2>
        </div>

     <div class="input-group flex-nowrap">
        <span class="input-group-text" id="addon-wrapping"><i class="fas fa-search"></i></span>
        <input type="text" name="search" id="search" class="form-control" placeholder="Chercher un document ...." aria-label="Username" aria-describedby="addon-wrapping">
     </div>
      <table >
      <thead >
      <tr>
      <th>Nom du document</th>
      <th>Type</th>
      <th>Taille</th>
      <th>Département</th>
      <th>Date </th>
      <th>Voir</th>
      <th></th>
      <th>Actions</th>
      <th></th>
      </tr>
      <%
       try{
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet","root","");
    	  String sql="SELECT * FROM fichiers";
    	  Statement stmt=conn.createStatement();
    	  ResultSet rs=stmt.executeQuery(sql);
    	  while(rs.next())
    	  {
    		  %>
    		 <tr>
    		 <td><%=rs.getString("name")%></td>
             <td><img src="<%=rs.getString("type")%>"></td>
             <td><%=rs.getInt("taille")%></td>
             <td><%=rs.getString("departement")%></td>
             <td><%=rs.getInt("date")%></td>
             <td><a href=""><button class="button" type="button"><i class="fas fa-eye"></i></button></a></td>
             <td><a href="UpdateFile.jsp"><button class="button" type="button"><i class="fas fa-edit"></i></button></a></td>
             <td><a href=""><button class="button" type="button"><i class="fas fa-trash"></i></button></a></td>
             <td><a href=""><button class="button" type="button"><i class="fas fa-file-archive"></i></button></a></td>
    		  </tr>
    		  <%
    	  }
       }catch(Exception ex){
    	   out.println(ex.getMessage());
       }
      %>
     
      </thead>
      </table>
</section>
</div>
<!-- Javascript -->


</body>
</html>
