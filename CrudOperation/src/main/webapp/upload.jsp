<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>file upload</title>
<link rel="stylesheet" href="./assets/css/bootstrap.css">
</head>
<body>
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-6">
				<div class="card">
					<div class="card-header"><h2 class="text-center">File Upload</h2></div>
					<div class="card-body text-center">
						<form action="UploadServlet" method="post" enctype="multipart/form-data">
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Upload</label>
									<input type="file" class="form-control-file col-8 mt-2" name="file" id="file" placeholder="">
							</div>
							<div class="text-center">
									<button type="submit" class="btn text-white bg-primary">upload</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>