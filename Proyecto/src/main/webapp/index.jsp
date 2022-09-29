<%-- 
    Document   : index
    Created on : 26/09/2022, 8:50:47 p. m.
    Author     : DM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>INFOSURA</title>
	<!-- css bootstrap -->
	<link rel="stylesheet" type="text/css" href="bootstrap-4/css/bootstrap.css">
	<!-- js bootstrap -->
    <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
	</header>
	<div class="loginbox">
		<div class="img">
		<img src="images/logo.png ">
		</div>		
		<br>
	<center><h3><b>INFOSURA</b></h3></center>
  	<div class="form">
 				<form action="LoginServlet" method="POST">
                                    
					<div class="form-group">
						<label>Usuario: </label><br>
						<input type="text" onkeypress="return soloLetras(event)" name="username" placeholder="Digite su Usuario" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Contraseña:</label><br>
						<input type="password" name="pass" onkeypress="return soloNumeros(event)"placeholder="Digite su Contraseña" class="form-control" required>
						
					</div>
		  			<a href="#">¿Olvido su contraseña?</a>		
		  			<br>		
		  			<br>
                                        <button type="submit" class="btn btn-success btn-block bg-c6">Ingresar</button>
                                        <p>${message}</p>
                                     
	<script src="bootstrap-4/js/bootstrap.js"></script>
   	</div>	
   </div>
    </body>
</html>
