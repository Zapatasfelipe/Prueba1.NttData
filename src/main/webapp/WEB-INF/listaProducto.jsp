<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Productos</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<h1>Lista de Productos</h1>
		<form action="../producto/findbuscar" method="post">
			<select class="form-select form-select-lg mb-3" name="nombre">
				<c:forEach items="${listaProductos}" var="lista">
					<option value="${lista.nombre}">${lista.nombre}</option>
				</c:forEach>
			</select> 
			<button class="btn btn-primary" type="submit">buscar</button>
		</form>

		<table class="table">
					<thead >
						<tr>
							<th>Id</th>
							<th>nombre</th>
							<th>marca</th>
							<th>descripcion</th>
							<th>precio</th>
							<th>categoria</th>
							<th></th>
						</tr>
					</thead>
					<c:forEach items="${listaProductos}" var="lista">
						<tr>
							<td>${lista.id}</td>
							<td>${lista.nombre}</td>
							<td>${lista.marca}</td>
							<td>${lista.descripcion}</td>
							<td>${lista.precio}</td>
							<td><c:forEach items="${lista.categorias}" var="categoria">
							<span>${categoria.nombre} </span>
							</c:forEach></td>
					<td><a class="btn btn-primary" href="../producto/editar/${lista.id}">Editar</a>
							 <a class="btn btn-danger" href="../producto/eliminar/${lista.id}">Eliminar</a>
							 </td>
						</tr>
					</c:forEach>
		</table>
	<a href="../producto" class="btn btn-primary">Volver</a>	
	</div>
</body>
</html>