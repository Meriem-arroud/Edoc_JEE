<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="Header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
   <%@ page pageEncoding="UTF-8" %>
    <%@ page import=" java.util.*" %>
    <%@ page import="com.mysql.jdbc.Connection" %>
    <%@ page import="  java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/dist/css/bootstrap.css"  rel="stylesheet">
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

<%
Connection cnx = null;
String tab1 = null;

    ArrayList array=new ArrayList();
    ArrayList array2=new ArrayList();
      try {
      Class.forName("com.mysql.jdbc.Driver");
   
      String url="jdbc:mysql://localhost:3306/projet";
      String user="root";
      String pass="";
     cnx=(Connection) DriverManager.getConnection(url,user,pass);
     //System.out.println("connexion bien");
    



Statement stmt1 = (Statement)cnx.createStatement();


String sql;
sql = "SELECT * FROM departements";
ResultSet rs1 = stmt1.executeQuery(sql);



// Extract data from result set
while(rs1.next()){
array.add(rs1.getString("name"));
}
stmt1.close();
Statement stmt2 = (Statement)cnx.createStatement();


String sql2;
sql2 = "SELECT * FROM types";
ResultSet rs2 = stmt2.executeQuery(sql2);


while(rs2.next()){
array2.add(rs2.getString("type"));
}

}catch(SQLException se){
//Handle errors for JDBC
se.printStackTrace();
}catch(Exception e){
//Handle errors for Class.forName
e.printStackTrace();
}


%>

<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-5" >
<form  action="addfile" method="post"  enctype="multipart/form-data">


  
<div class="form-group">
   
<input type="file" name="fichier" class="form-control-file" id="exampleFormControlFile1">
  </div>
<div class="form-group">
<select class="form-control form-control-lg"  required  name="depart">
<option selected> sélectionner le département</option>

<% for(int i=0;i<array.size();i++){	 %>
<option value=<%=array.get(i) %>><%=array.get(i) %></option>
<% 
} %>
</select></div>
<select class="form-control form-control-lg" name="type"  required>
<option selected> sélectionner le type de fichier</option>
<% for(int i=0;i<array2.size();i++){	 %>
<option value=<%=array2.get(i) %>><%=array2.get(i) %></option>
<% 
} %>
</select></div>

</div>
</br><br>
&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; <button type="submit" align="center" class="btn btn-success">Ajouter Fichier</button>
&emsp; 
<button type="reset" class="btn btn-outline-dark">Annuler</button>

</form>
</div >

</div >
</div >

</body>
</html>
<%@ include file="Service.jsp" %>
<%@ include file="SmallFooter.jsp" %>
</body>
</html>