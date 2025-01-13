<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <main class="bg-image container-fluid" style="
      background-image: url('${pageContext.request.contextPath}/images/simple-blue-background-wallpaper-thumb.jpg');
      background-repeat: no-repeat;
      background-size: cover;
      height: 100vh;
    ">
       <%@ include file="./header.jsp" %>
        <!-- <div class="container-fluid"> -->
        <div class="row"><div class="col-12 text-center"><h1>Edit Entry</h1></div>
							</div><br/>
							<br/>
							<br/>
            <div class="row">
            
                <div class="col-3"></div>
                <div class="col-6">
                   <form action="entryformupdate" method =Post>
                         <div class="mb-3">
                            <label for="Name" class="form-label">Full Name</label>
                            <input  value ="${user.id}"  type="hidden"  name = "id"  class="form-control" id="rty">
                            <input  value ="${user.name}"  type="text"  name = "name"  class="form-control" id="Name">

                        </div>
                        <div class="mb-3">
                            <label for="Email1" class="form-label">Email address</label>
                            <input  value ="${user.email}"  type="email" name = "email"  class="form-control" id="Email1">

                        </div>
                        <div class="mb-3">
                            <label for="Number" class="form-label">Mobile Number</label>
                            <input  value ="${user.mobile}"  type="number" name = "mobile"  class="form-control" id="Number">

                        </div>

                        <div class=" text-center">
                            <input type="submit" class="form-control btn btn-primary " value="Submit" id="none">
                        </div>
                    </form>
                </div>
                <div class="col-3"></div>
            </div>
   <!--      </div> -->
    </main>

</body>

</html>