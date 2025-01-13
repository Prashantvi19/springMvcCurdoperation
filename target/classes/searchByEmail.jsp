<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en" data-bs-theme="light">

<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>

<body>
	<main class=" container-fluid bg-image"
		style="
      background-image: url('${pageContext.request.contextPath}/images/dfsdfd454545.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      height: 100vh;
    ">
		<%@ include file="./header.jsp"%>
		<!-- <div class="container-fluid"> -->
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<form action="serachbyemailresultrequest" method= Get>

						<div class="mb-3">
						<div class="row"><div class="col-12 text-center"><h1>Search Entry By Email</h1></div>
							</div><br/>
							<br/>
							<br/>
							<div class="row">
								<div class="col-4">
									<label for="Email1" class="form-label">Email address</label>
								</div>
								<div class="col-4">
									<input type="email" class="form-control" name="emailId" id="Email1">
								</div>
								<div class="col-4">
									<input type="submit" class="form-control btn btn-primary "
										value="Submit" id="none">
								</div>
							</div>
						</div>


					</form>
				</div>
				<div class="col-3"></div>
			</div>
		<!-- </div> -->
	</main>


</body>

</html>
