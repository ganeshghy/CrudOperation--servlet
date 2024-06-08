<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crud Operation</title>
<link rel="stylesheet" href="./assets/css/bootstrap.css">
<script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-3">
		<div class="row justify-content-center m-5">
			<div class="col">
				<h2 class="">CRUD Operation!!!</h2>
				<div>
					<a class="btn btn-outline-secondary px-2 mt-2" href="create.jsp" role="button">CREATE</a>
					<a class="btn btn-outline-secondary px-2 mt-2" href="view.jsp" role="button">VIEW</a>
					<a class="btn btn-outline-secondary px-2 mt-2" href="edit.jsp" role="button">EDIT</a>
					<a class="btn btn-outline-secondary px-2 mt-2" href="search.jsp" role="button">SEARCH</a>
					<a class="btn btn-outline-secondary px-2 mt-2" href="upload.jsp" role="button">UPLOAD</a>
				</div>
			</div>
		</div>
	</div>
	<%
		  if (request.getAttribute("res") != null && (boolean)request.getAttribute("res")) {
		      
		%>
		  <script>
		      alert("Record Inserted Successfully!");
		  </script>
		<%
		      request.setAttribute("res", false);
		  }
		%>
</body>
</html>