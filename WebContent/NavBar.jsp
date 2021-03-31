<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
<!-- Navbar -->
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
        </li>  
        <li style="padding-right:25px" class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <i class="fa fa-bell"></i>
          <span class="badge rounded-pill badge-notification bg-danger"></span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <li><a style="color:#ff7f41;font-weight:bold;" class="dropdown-item" href="#">Marquer Tout Comme Lu</a></li>
            <%
       try{
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projet","root","");
    	  String sql="SELECT * FROM notifications";
    	  Statement stmt=conn.createStatement();
    	  ResultSet rs=stmt.executeQuery(sql);
    	  while(rs.next())
    	  {
    		  %>
    		 <li><a class="dropdown-item"><%=rs.getString("contenu")%></a></li>
    		  <%
    	  }
       }catch(Exception ex){
    	   out.println(ex.getMessage());
       }
      %>
          </ul>
        </li>
        <li style="padding-right:20px" class="nav-item">
          <a class="nav-link" href="#"> <i style="padding-right:10px" class="fas fa-user-tie"></i>Bonjour Super Admin</a>
        </li>
        <li class="nav-item">
          <a id="logoutBtn" class="nav-link" href="login.jsp"><i style="padding-right:10px" class="fas fa-sign-out-alt"></i>Se déconnecter</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- End Navbar -->