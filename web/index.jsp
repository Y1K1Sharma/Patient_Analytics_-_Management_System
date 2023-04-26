<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Index Page</title>
    <%@include file="component/allcss.jsp"%>
    
    <style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp"%>

    <% Connection conn=DBConnect.getConn();
    out.print(conn);
    %>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img\c.jpg" class="d-block w-100" alt="First Slide" height="500px">
    </div>
    <div class="carousel-item">
      <img src="img\1.jpg" class="d-block w-100" alt="Second Slide"height="500px">
    </div>
    <div class="carousel-item">
      <img src="img\3.jpg" class="d-block w-100" alt="Third Slide"height="500px">
    </div>
      
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container p-3">
    <p class="text-center fs-2 "><u>Key Features of our MedZap</u></p>

	<div class="row">
            <div class="col-md-8 p-5">
		<div class="row">
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">100% Safety</p>
						<p>Secure</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">User Management</p>
						<p>Faithfull</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 mt-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">Friendly Doctors</p>
						<p>Specialist Doctors</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 mt-2">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-5">Analytics</p>
						<p>Almost 99% Secure</p>
					</div>
				</div>
			</div>
               	</div>
	</div>
    <div class="col-md-4">
        <img alt="" src="img\d.png" height="300px" width="350px">
    </div>
 </div>
    	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>
		
		<div class="row">
			<div class="col-md-3">	
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/Me.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Yash Kumar</p>
						<p class="fs-7">(Member 1)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/Shreya.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Shreya Khanna</p>
						<p class="fs-7">(Member 2)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				
			</div>

		</div>

	</div>
    <%@include file="component/footer.jsp" %>
</body>
</html>





