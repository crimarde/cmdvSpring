<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Listado</title>
	
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
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/js.js"/>"></script>
</body>
</html>
