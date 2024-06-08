<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link rel="stylesheet" href="./assets/css/bootstrap.css">
</head>
<body>
<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-6">
				<div class="card">
					<div class="card-header"><h2 class="text-center">SEARCH THE RECORD</h2></div>
					<div class="card-body text-center">
						<form action="searchView.jsp" method="post">
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Search</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="id" id="name" placeholder="SearchID">
							</div>
							<div class="text-center">
									<button type="submit" class="btn text-white bg-primary">Search</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>