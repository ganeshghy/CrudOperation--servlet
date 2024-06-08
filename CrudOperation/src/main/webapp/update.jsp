<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
<link rel="stylesheet" href="./assets/css/bootstrap.css">
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email  = request.getParameter("email");
		String phno = request.getParameter("phno");
		String pwd = request.getParameter("pwd");
	%>
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-6">
				<div class="card">
					<div class="card-header"><h2 class="text-center">UPDATE OPERATION</h2></div>
					<div class="card-body text-center">
						<form action="UpdateServlet" method="post">
							<div class="d-flex flex-row d-flex justify-content-around form-group">
								<label class="mr-auto p-2 h5">Id</label>
								<input type="text" value=<%= id %> class="form-control col-8 ms-auto ps-2" name="id" id="id" placeholder="ID" readonly>
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Name</label>
									<input type="text" value=<%= name %> class="form-control col-8 ms-auto ps-2" name="name" id="name" placeholder="Full Name">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Email</label>
									<input type="email" value=<%= email %> class="form-control col-8 ms-auto ps-2" name="email" id="email" placeholder="Email">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Phone No</label>
									<input type="text" value=<%= phno %> class="form-control col-8 ms-auto ps-2" name="phno" id="phno" placeholder="Phone No">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Password</label>
									<input type="password" value=<%= pwd %> class="form-control col-8 ms-auto ps-2" name="pwd" id="pwd" placeholder="Password">
							</div>
							<div class="text-center">
									<button type="submit" class="btn text-white bg-primary">Updata</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>