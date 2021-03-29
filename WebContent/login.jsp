<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="shortcute icon" type="image/png" href="images/logo.png">
<link href="bootstrap/dist/css/bootstrap.css"  rel="stylesheet">
<link href="bootstrap/dist/css/bootstrap.min.css"  rel="stylesheet">
<link href="css/style.css"  rel="stylesheet">
<meta charset="ISO-8859-1">
<title>SMAC-e-DOC</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-5" >
<form  method="post" action="Recieveogin.jsp">
  <h2 class="text-center">Se connecter </h2>




<div class="form-group" id="form">
<input type="email" class="form-control"   id="email" name="email"  placeholder="j.doe@gmail.com" >
</div >
<div class="form-group" id="form1">

<input type="password" class="form-control"    id="pass"  name="pass"  placeholder="Mot de passe" >
</div> 
<div id="text1"></div>
<button type="submit" class="btn btn-primary ">Se connecter</button>

</form>
</div >
</div >
</div >
</body>
</html>
