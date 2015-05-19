<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edición</title>
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
</body>
</html>
