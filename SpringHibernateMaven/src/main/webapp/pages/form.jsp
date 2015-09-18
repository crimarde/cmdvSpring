<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Formulario de alta</title>
	
	<!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->	
</head>
<body>
	<div style="margin: auto; text-align: center;">
		<div style="color: olive; font-size: 30px">
			Formulario de alta
		</div>

		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm" modelAttribute="employee" method="post" action="register">
			<table style="width: 400px; height: 150px; margin: auto">
				<tr>
					<td><form:label path="firstName">Nombre</form:label></td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<td><form:label path="lastName">Apellido</form:label></td>
					<td><form:input path="lastName" /></td>
				</tr>
				<tr>
					<td><form:label path="email">Email</form:label></td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td><form:label path="phone">Telefono</form:label></td>
					<td><form:input path="phone" /></td>
				</tr>
				<tr>
					<td colspan="2" >
						<div class="btn-group" role="group" aria-label="MyLabel">
					    	<input type="submit" value="Registrar" class="btn btn-default" />
					    	<input type="reset" value="Vaciar" class="btn btn-default" />
					    </div>
					</td>
				</tr>
			</table>
		</form:form>

		<a href="list">Pulsa aquí para ver la lista completa de contactos</a>
	</div>
	
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/js.js"/>"></script>
</body>
</html>
