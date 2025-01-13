
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<html lang="en" data-bs-theme="light">

<head>
  <meta charset="utf-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</head>

<body>
  <main 
  class="bg-image container-fluid" style="
  background-image: url('${pageContext.request.contextPath}/images/sdfghjkl.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  height: 100vh;
"
>
<%@ include file="./header.jsp"%>
<!-- <div class="container-fluid"> -->
	<div >
		<div id="carouselExampleSlidesOnly" class="carousel slide "
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active " data-bs-interval="1500">
					<img
						src="${pageContext.request.contextPath}/images/240_F_590984956_sfLEosb32bWdY7nYRXlTGCagP7kVgWZD.jpg"
						class="d-block img-fluid w-100 " style="height: 610px !important;" alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="1500">
					<img
						src="${pageContext.request.contextPath}/images/240_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg"
						class="d-block w-100" style="height: 610px !important;" alt="...">
				</div>
				<div class="carousel-item" data-bs-interval="1500">
					<img
						src="${pageContext.request.contextPath}/images/240_F_535473874_OWCa2ohzXXNZgqnlzF9QETsnbrSO9pFS.jpg"
						class="d-block w-100 " style="height: 610px !important;" alt="...">
				</div>

				<div class="carousel-item" data-bs-interval="1500">
					<img src="${pageContext.request.contextPath}/images/back.jpg" class="d-block w-100 "
						style="height: 610px !important;" alt="...">
				</div>

			</div>
		</div>
	</div>
<!-- </div> -->
</main>
</body>

</html>