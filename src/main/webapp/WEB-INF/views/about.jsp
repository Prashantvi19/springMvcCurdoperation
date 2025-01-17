<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Project Description</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<div class="container mt-5">
		<h1 class="text-center mb-4">Project Description</h1>

		<p>This project focuses on implementing CRUD operations (Create,
			Read, Update, Delete) using Web pages and RESTful Web Services. The
			main technologies and tools utilized in this project include:</p>

		<ul>
			<li><strong>Spring MVC:</strong> A robust and flexible framework
				for building web applications. It simplifies the development of web
				applications through its model-view-controller architecture.</li>
			<li><strong>Hibernate JPA:</strong> Used for ORM
				(Object-Relational Mapping), Hibernate JPA provides an efficient way
				to manage data persistence, enabling seamless interaction with
				databases.</li>
			<li><strong>JSP:</strong> JavaServer Pages (JSP) is used to
				create dynamic web content. It allows embedding Java code in HTML
				pages, making it easy to generate web-based content.</li>
			<li><strong>Bootstrap:</strong> For designing responsive and
				visually appealing web pages. It provides a ready-to-use grid
				system, components, and styling utilities to create modern,
				mobile-first websites.</li>
		</ul>

		<h2 class="mt-5">Key Features Implemented in the Project:</h2>

		<h3>CRUD Web Pages:</h3>
		<ul>
			<li>Create: Forms and functionality to add new records into the
				database.</li>
			<li>Read: Web pages to display data fetched from the database
				using Hibernate JPA.</li>
			<li>Update: Edit forms to modify existing records in the
				database.</li>
			<li>Delete: Options to remove records from the database.</li>
		</ul>

		<h3 class="mt-3">RESTful Web Services:</h3>
		<ul>
			<li>APIs built using Spring MVC to handle RESTful requests for
				CRUD operations.</li>
			<li>Routing using @Controller and @RequestMapping annotations.</li>
			<li>Response Handling in JSON format for easy integration with
				front-end applications.</li>
		</ul>

		<h3 class="mt-3">Database Management:</h3>
		<ul>
			<li>Integration with MySQL or H2 for managing persistent data
				storage.</li>
			<li>Using Hibernate JPA’s annotations and configuration to map
				Java objects to database tables.</li>
		</ul>

		<h3 class="mt-3">JSP Integration:</h3>
		<ul>
			<li>Templates that dynamically render content using server-side
				logic.</li>
			<li>Efficiently display data fetched from REST APIs and
				database.</li>
		</ul>

		<h3 class="mt-3">Styling with Bootstrap:</h3>
		<ul>
			<li>Utilization of Bootstrap’s grid system and pre-built
				components to create a responsive and clean UI.</li>
			<li>Consistent styling across web pages for a seamless user
				experience.</li>
		</ul>

		<p class="mt-4">This project demonstrates hands-on experience in
			building web-based applications that incorporate backend services
			(RESTful APIs) and frontend UI using modern web technologies. It
			focuses on making data accessible and manipulatable through a
			user-friendly interface, backed by robust backend services.</p>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
