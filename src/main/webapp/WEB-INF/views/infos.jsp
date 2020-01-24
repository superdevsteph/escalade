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


  <title>A propos de nous</title>
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
	<video autoplay="autoplay" muted="muted"
		loop="loop">
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




	
	<div class="my-5 container">
	
	<h3>A propos de nous...</h3>
			
			<p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta imperdiet ipsum, at sagittis leo hendrerit tempor. Nullam rutrum consectetur velit, sit amet auctor mi commodo eget. Etiam et augue felis. Nunc eros massa, mollis non consequat lobortis, accumsan vel nulla. Morbi id nunc ut neque mattis maximus vitae nec dui. Donec eu consectetur sapien. Aenean pulvinar ante vitae condimentum imperdiet. Duis sit amet fermentum nunc, at ornare nibh.

Nunc id dui porttitor, congue purus ac, fermentum orci. Ut dictum facilisis mauris, et iaculis nisl imperdiet id. Aliquam sit amet nulla vehicula, tempor velit nec, volutpat lorem. Proin consequat, ex ut luctus pretium, odio tortor scelerisque eros, sollicitudin aliquam urna urna id velit. Integer at orci semper, ullamcorper massa a, posuere enim. Nam vitae dolor tortor. Integer semper leo at neque blandit tempor. Morbi nec justo a neque malesuada laoreet. Aliquam feugiat quam eu enim efficitur vestibulum. Vivamus nec dui magna. Donec id dictum dolor. Mauris tincidunt vulputate nisl, quis commodo ipsum tristique a. Curabitur magna risus, fermentum id luctus vitae, porta et dolor. Donec pulvinar dolor et tortor egestas fermentum sit amet non quam.</p>
			
			</div>

</body>
<%@include file="footer.jsp" %>	
</html>
