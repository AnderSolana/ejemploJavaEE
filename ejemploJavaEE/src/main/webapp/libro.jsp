<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libro</title>
</head>
<body>
<h1>Libro ${libro.id}</h1>
<form action="formulariolibro" method="post">
	<fieldset>

		<legend>Libro (${accion})</legend>
		
			<input type="hidden" name="accion" value="${accion}" />
		
		
			<input type="hidden" name="id" id="id" value="${libro.id }" />
	
		
		<p>
			<label for="titulo">Título</label>
			<input type="text" name="titulo" id="titulo" value="${libro.titulo }" />
		</p>
		
		<p>
			<label for="editorial">Editorial</label>
			<input type="text" name="editorial" id="editorial" value="${libro.editorial}" />
		</p>
		
		<p>
			<label for="isbn">ISBN</label>
			<input type="text" name="isbn" id="isbn" value="${libro.isbn }" />
		</p>
		
		<p>
			<label for="precio">Precio</label>
			<input type="number" name="precio" id="precio" value="${libro.precio }" />
		</p>
		<p>
			<button>Aceptar</button>
		</p>

	</fieldset>
</form>
</body>
</html>