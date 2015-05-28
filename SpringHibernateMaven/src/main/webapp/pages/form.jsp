<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formulario de alta</title>
</head>
<body>
	<center>

		<div style="color: olive; font-size: 30px">
			Formulario de alta
		</div>

		<c:url var="userRegistration" value="saveUser.html" />
		<form:form id="registerForm" modelAttribute="employee" method="post"
			action="register">
			<table width="400px" height="150px">
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
						<input type="submit" value="Registrar" />
						<input type="reset" value="Vaciar" />
					</td>
				</tr>
			</table>
		</form:form>

		<a href="list">Pulsa aquí para ver la lista completa de contactos</a>
	</center>
	
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/js.js"/>"></script>
</body>
</html>
