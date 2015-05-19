<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listado</title>
</head>
<body>
	<div style="text-align: center; margin: auto;">

		<div style="color: teal; font-size: 30px">
			Listado de contactos
		</div>

		<c:if test="${!empty employeeList}">
			<table border="1"  style="background-color:black; width:600px;margin: auto;">
				<tr
					style="background-color: olive; color: white; text-align: center;"
					height="40px">
					
					<td>Nombre</td>
					<td>Apellido</td>
					<td>Email</td>
					<td>Teléfono</td>
					<td colspan="2">Operaciones</td>
				</tr>
				<c:forEach items="${employeeList}" var="user">
					<tr
						style="background-color: white; color: black; text-align: center;"
						height="30px">
						
						<td><c:out value="${user.firstName}" />
						</td>
						<td><c:out value="${user.lastName}" />
						</td>
						<td><c:out value="${user.email}" />
						</td>
						<td><c:out value="${user.phone}" />
						</td>
						<td><a href="edit?id=${user.id}">Editar</a></td>
						<td><a href="delete?id=${user.id}">Eliminar</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>


		<a href="form">Pulsa aquí para añadir un nuevo usuario</a>
	</div>
</body>
</html>
