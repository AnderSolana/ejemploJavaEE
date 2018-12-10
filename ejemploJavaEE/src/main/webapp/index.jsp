<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ipartek.formacion.pojos.Libro" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libros</title>
</head>
<body>
	<h1>Listado de libros</h1>
	<c:forEach items="${libros.values()}" var="libro">
		<p>${libro.titulo}</p>
	</c:forEach>
</body>
</html>