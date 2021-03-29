<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Style -->
   <link type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"> 
  <link href="css/admin.css" rel="stylesheet">
  <link rel="stylesheet"  type="text/css" href="css/designe.css"/>
   <!-- Fontawesome -->
   <script type="text/javascript" src="https://kit.fontawesome.com/cbb8fa204a.js"></script>
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
      
      <option value="{{$departe->name_departement}}">{{$departe->name_departement}}</option>
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
   
         <option value="{{$tp->type}}">{{$tp->type}}</option>
 
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
      <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
 </body>

</html>

