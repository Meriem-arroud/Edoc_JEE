<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  session="true" %>
    <%@ page import="com.mysql.jdbc.Connection" %>
    <%@ page import="  java.sql.*" %>
    <%@ page import="java.util.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String email=request.getParameter("email") ;
String pass1=request.getParameter("pass") ;

Connection cnx = null;
String tab1 = null;

      try {
      Class.forName("com.mysql.jdbc.Driver");
   
      String url="jdbc:mysql://localhost:3306/projet";
      String user="root";
      String pass="";
     cnx=(Connection) DriverManager.getConnection(url,user,pass);
     //System.out.println("connexion bien");
 HttpSession sessio = request.getSession();   
PreparedStatement stmt=cnx.prepareStatement("select * from users where email=? and password=?");  
stmt.setString(1,email);//1 specifies the first parameter in the query  

stmt.setString(2,pass1);
ResultSet rs1 = stmt.executeQuery();

if(rs1!=null){
while(rs1.next()){
	if(rs1.getString("password")=="000" ){
%>

<jsp:forward page="AdminHome.jsp"/>


<% }else{%>
<jsp:forward page="HeaderHome.jsp"/>
<%
}}
}  
}catch(SQLException se){
//Handle errors for JDBC
se.printStackTrace();
}catch(Exception e){
//Handle errors for Class.forName
e.printStackTrace();
}
      %>

</body>
</html>