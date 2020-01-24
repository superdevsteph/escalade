<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>


<html lang="en">
	<style><%@include file="/static/css/app.css"%></style>

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

  <title>Nouveau Topo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
</head>
     
 <body>
<%@include file="navbar.jsp" %>	
	<header class="h-25 d-inline-block">
		<div class="overlay"></div>
		<video autoplay="autoplay" muted="muted" loop="loop">
			<source
				src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4"
				type="video/mp4">
		</video>
		<div class="container h-50">
			<div class="d-flex h-100 text-center align-items-center">
				<div class="w-100 text-white">
					<h1 class="display-3">Les amis de l'escalade</h1>
					<p class="lead mb-0">coucou</p>
				</div>
			</div>
		</div>
	</header>



	<section class="container my-5">
			<form:form class="form-horizontal my-5 center_div col-6" role="form"
			action="saveTopo" method="POST" modelAttribute="userForm">
				<form:input type="hidden" path="id" id="id"/>
		
				<legend class="form-signin-heading">Ajouter un Topo</legend>

				<div class="form-group col-10">
					<label for="fichier">Couverture</label> <input type="file"
						class="form-control-file" id="fichier">
				</div>
				

				<div class="form-group col-10">
					<label for="toponame">Nom</label>
					<form:input class="form-control" path="toponame" required="required" />
					<form:errors path="toponame" class="error-message" />

				</div>

				<div class="form-group col-10">

					<label for="region">Lieu</label>
					<form:input class="form-control" path="lieu" required="required" />
					<form:errors path="lieu" class="error-message" />
				</div>

				<div class="form-group col-10">

					<label for="nbVoies">Disponible</label>
					<form:input class="form-control" path="disponible"  />
					<form:errors path="disponible" class="error-message" />
				</div>
				
							<div class="form-group col-10">
					<label for="bio">Description</label>

					<form:input  class="form-control" path="description" id="bio" rows="3" required="required" />
					<form:errors path="description" class="error-message" />

				</div>
				
				
				<div class="form-group col-10">

					<label for="datePublication">Date de publication</label>
					<form:input class="form-control" type="date" path="datePublication" required="required" />
					<form:errors path="datePublication" class="error-message" />
				</div>

	

				<div>
					<input type="submit" value="Submit" /> <a
						href="${pageContext.request.contextPath}/topoList">Cancel</a>
				</div>
			
		</form:form>

	</section>


</body>
<%@include file="footer.jsp" %>	
</html>
