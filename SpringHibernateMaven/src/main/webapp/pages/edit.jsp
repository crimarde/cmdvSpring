<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Edición</title>
	
	<!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->	
</head>
<body>
	<center>

		<div style="color: olive; font-size: 30px">
			Edición
		</div>

		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm" modelAttribute="employee" method="post" action="update">
			<table width="400px" height="150px">
				<tr>
					<td><form:label path="firstName">Nombre</form:label></td>
					<td><form:input path="firstName" value="${employeeObject.firstName}" /></td>
				</tr>
				<tr>
					<td><form:label path="lastName">Apellido</form:label></td>
					<td><form:input path="lastName" value="${employeeObject.lastName}"/></td>
				</tr>
				<tr>
					<td><form:label path="email">Email</form:label></td>
					<td><form:input path="email" value="${employeeObject.email}"/></td>
				</tr>
				<tr>
					<td><form:label path="phone">Teléfono</form:label></td>
					<td><form:input path="phone" value="${employeeObject.phone}"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="hidden" name="id" value="${employeeObject.id}">
						<input type="submit" value="Actualizar" />
					</td>
				</tr>
			</table>
		</form:form>
	</center>
	
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/js.js"/>"></script>
</body>
</html>
