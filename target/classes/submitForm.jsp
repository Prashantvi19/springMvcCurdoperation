<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<main class="bg-image container-fluid"
		style="
      background-image: url('${pageContext.request.contextPath}/images/sky-blue-hd-background-image-for-banner.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      height: 100vh;
    ">
		<%@ include file="./header.jsp"%>
		<!-- <div class="container-fluid"> -->
		<div class="row">
			<div class="col-12 text-center">
				<h1>Add Entry</h1>
			</div>
		</div>

		<br /> <br /> <br />


		<div class="row">

			<c:if test="${not empty successMsg}">
				<div class="col-12 text-center">
					<div class="row">
						<div class="alert alert-success" role="alert">${successMsg}</div>
					</div>
				</div>
				<br />
				<br />
				<br />
			</c:if>
			<c:if test="${not empty errorMsg}">
				<div class="col-12 text-center">
					<div class="row">
						<div class="alert alert-danger" role="alert">${errorMsg}</div>
					</div>
				</div>
				<br />
				<br />
				<br />
			</c:if>

			<div class="col-3"></div>
			<div class="col-6">
				<form action="entryFormSubmit" method=Post>
					<div class="mb-3">
						<label for="Name" class="form-label">Full Name</label> <input
							type="text" name="name" class="form-control" id="Name">
					</div>
					<div class="mb-3">
						<label for="Email1" class="form-label">Email address</label> <input
							type="email" name="email" class="form-control" id="Email1">

					</div>
					<div class="mb-3">
						<label for="Number" class="form-label">Mobile Number</label> <input
							type="number" name="mobile" class="form-control" id="Number">

					</div>

					<div class="text-center">
						<input type="submit" class="form-control btn btn-primary "
							value="Submit" id="none">
					</div>
				</form>
			</div>
			<div class="col-3"></div>
		</div>
		<!-- </div>
 -->
	</main>


</body>

</html>
