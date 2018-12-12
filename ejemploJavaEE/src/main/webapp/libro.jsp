<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Libro</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<div class="page-header">
<h1>Libro ${libro.id}</h1>
<form class="form-horizontal" action="formulariolibro" method="post">
	<fieldset>

		<legend>Libro (${accion})</legend>
		
			<input type="hidden" name="accion" value="${accion}" />
		
		
			<input type="hidden" name="id" id="id" value="${libro.id }" />
	
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="titulo">Título</label>
			<div class="col-sm-10">
			<input type="text" name="titulo" id="titulo" value="${libro.titulo }" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="editorial">Editorial</label>
			<div class="col-sm-10">
			<input type="text" name="editorial" id="editorial" value="${libro.editorial}" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="isbn">ISBN</label>
			<div class="col-sm-10">
			<input type="text" name="isbn" id="isbn" value="${libro.isbn }" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="precio">Precio</label>
			<div class="col-sm-10">
			<input type="number" name="precio" id="precio" value="${libro.precio }" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2" for="button"></label>
		<div class="col-sm-10">
			<button>Aceptar</button>
		</div>
		</div>

	</fieldset>
</form>
</div>
</div>
</body>
</html>