<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>


<html lang="en">
	<style><%@include file="/static/css/app.css"%></style>

<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Nouveau Topo</title>
        <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
       <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
  
</head>
     
 <body>
 <nav class="navbar-fixed-top"><%@include file="navbar.jsp" %>	  </nav>	
<%@include file="header.jsp" %>


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
