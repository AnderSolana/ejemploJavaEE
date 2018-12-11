<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libros</title>
</head>
<body>
	<h1>Listado de libros</h1>
	<table border="1">
		<tr>
			<th>Título</th><th>Editorial</th><th>ISBN</th><th>Precio (€)</th><th colspan="2">Acciones</th>
		</tr>
	<c:forEach items="${libros.values()}" var="libro">
		<tr>
			<td>${libro.titulo}</td><td>${libro.editorial}</td><td>${libro.isbn}</td>
			<td>${libro.precio}</td><td><a href="formulariolibro?accion=editar&id=${libro.id }">Editar</a></td><td><a href="formulariolibro?accion=borrar&id=${libro.id }">Borrar</a></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>