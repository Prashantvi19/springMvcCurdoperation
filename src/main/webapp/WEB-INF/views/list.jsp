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

<body class="bg-primary" >


	<main class="bg-image container-fluid"
		style="
    background-image: url('${pageContext.request.contextPath}/images/Blue-Background-HD-Wallpaper-16267.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    height: 100vh;
  ">
		<%@ include file="./header.jsp"%>
		<!-- <div class="container-fluid"> -->
		<div class="row">
			<div class="col-12 text-center">
				<h1>Entry List</h1>
			</div>
		</div>

		<br /> <br /> <br />

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



		<table class="table table-bordered border-primary">
			<thead>
				<tr>
					<th scope="col">S.N</th>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Mobile no</th>
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
				</tr>
			</thead>
			<tbody>
				<%
				int i = 1;
				%>
				<c:if test="${empty listUser}">
					<tr>
						<td colspan="7" class="text-center">No records found</td>
					</tr>
				</c:if>
				<c:if test="${!empty listUser}">
					<c:forEach var="user" items="${listUser}">


						<tr>
							<th scope="row"><%=i++%></th>

							<td>${user.id}</td>
							<td>${user.name}</td>
							<td>${user.email}</td>
							<td>${user.mobile}</td>
							<td class=" text-center"><a href="deletevalue?id=${user.id}"
								class="btn  btn-danger">Delete</a></td>
							<td class=" text-center"><a href="updateById?id=${user.id}"
								class="btn  btn-primary ">Update</a></td>
						</tr>

					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<!-- </div> -->
	</main>
<%@ include file="./footer.jsp"%>

</body>

</html>


