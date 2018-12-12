<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Libros</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<div class="page-header">
	<h1>Listado de libros</h1>
</div>
<div class="jumbotron">
	<table class="table table-bordered">
	<caption><a href="formulariolibro?accion=insertar">Crear nuevo libro</a></caption>
		<tr class="table-dark">
			<th>Título</th><th>Editorial</th><th>ISBN</th><th>Precio (€)</th><th colspan="2">Acciones</th>
		</tr>
	<c:forEach items="${libros.values()}" var="libro">
		<tr class="table-primary">
			<td>${libro.titulo}</td><td>${libro.editorial}</td><td>${libro.isbn}</td>
			<td>${libro.precio}</td><td><a href="formulariolibro?accion=editar&id=${libro.id }">Editar</a></td><td><a href="formulariolibro?accion=borrar&id=${libro.id }">Borrar</a></td>
		</tr>
	</c:forEach>
	</table>
</div>
</div>
</body>
</html>