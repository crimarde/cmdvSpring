<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<table border="1"  style="width:600px;margin: auto;">
				<thead  style="background-color:olive">
					<tr>
						<th colspan="6">
							Listado de contactos
						</th>
					</tr>
				</thead>
				<tbody>
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
							
							<td>
								<c:out value="${user.firstName}" />
							</td>
							<td>
								<c:out value="${user.lastName}" />
							</td>
							<td>
								<c:out value="${user.email}" />
							</td>
							<td>
								<c:out value="${user.phone}" />
							</td>
							<td>
								<input id="${user.id}"  type="button" value="Editar" onclick="redirige(${user.id},'${user.firstName}','${user.lastName}','${user.email}','${user.phone}');">
							</td>
							<td>
								<input id="${user.id}"  type="button" value="Eliminar" onclick="eliminar(${user.id});">
							</td>
						</tr>
					</c:forEach>
				</tbody>
				
				<tfoot>
					<tr>
						<td colspan="6">
							Pie de tabla
						</td>
					</tr>
				</tfoot>
				
				<caption>Tabla resumen de usuarios</caption>		
			</table>
		</c:if>
		
		<input id="${user.id}"  type="button" value="Añadir un nuevo usuario" onclick="add();">
	</div>
	
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/js.js"/>"></script>
</body>
</html>
