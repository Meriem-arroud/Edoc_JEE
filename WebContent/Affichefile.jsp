<%@ include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
     <%@ page import="com.mysql.jdbc.Connection" %>
    <%@ page import="  java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="section-title">
          <h2>Afficher documents</h2>
        </div>

<div class="container box">
    <div class="panel-body">
    <div class="p-1 bg-light rounded rounded-pill shadow-sm mb-4">
            <div class="input-group">
              <input type="text" name="search" id="search" placeholder="Chercher un document....." aria-describedby="button-addon1" class="form-control border-0 bg-light">
              <div class="input-group-append">
                <button id="button-addon1" type="submit" class="btn btn-link text-info"><i class="fa fa-search"></i></button>
              </div>
            </div>
          </div>
    <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Titre du fichier</th>
      <th scope="col">Type</th>
      <th scope="col">Département</th>
      <th scope="col">Date d'ajout</th>
       <th scope="col">Importer</th>
       <th scope="col">Consulter</th>
      
    </tr>
  </thead>
  <tbody>
   
<%
Connection cnx = null;
String tab1 = null;

      try {
      Class.forName("com.mysql.jdbc.Driver");
   
      String url="jdbc:mysql://localhost:3306/projet";
      String user="root";
      String pass="";
     cnx=(Connection) DriverManager.getConnection(url,user,pass);
     //System.out.println("connexion bien");
    



Statement stmt1 = (Statement)cnx.createStatement();


String sql;
sql = "SELECT * FROM fichiers";
ResultSet rs1 = stmt1.executeQuery(sql);

%>
<tr>
<%

while(rs1.next()){%>

<td scope="row"><%=rs1.getString("name") %></td>


<td><img src="<%=rs1.getString("type")%>"/></td>

<td><%=rs1.getString("departement") %></td>
<td><%=rs1.getString("date") %></td>
<td><img  width="26 px" height="26 px" src="images/c.png"/></td>
<td><img   width="30 px" height="30 px"src="images/d.png"/></td>
<td></td>
<td></td>
</tr>
<tr>
<% } %>
<% 
}catch(SQLException se){
//Handle errors for JDBC
se.printStackTrace();
}catch(Exception e){
//Handle errors for Class.forName
e.printStackTrace();
}
%>
 </tbody>
</table>
</body>
</html>

<%@ include file="Service.jsp" %>
<%@ include file="SmallFooter.jsp" %>