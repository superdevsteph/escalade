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
        <title>Creer un compte</title>
        <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
       <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
  
</head>
     
 <body>
 <nav class="navbar-fixed-top"><%@include file="navbar.jsp" %>	  </nav>	
<%@include file="header.jsp" %>	
 	
 	
 	<div class="generic-container">
		
		<div class="well lead">Formulaire d'inscription</div>
		<form:form method="POST" modelAttribute="user" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstName">Pr�nom</label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm " required="required"/>
						<div class="has-error">
							<form:errors path="firstName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="lastName">Nom</label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" required="required"/>
						<div class="has-error">
							<form:errors path="lastName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="ssoId">identifiant</label>
					<div class="col-md-7">
						<c:choose>
							<c:when test="${edit}">
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true" required="required"/>
							</c:when>
							<c:otherwise>
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="ssoId" class="help-inline"/>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="password">Mot de passe</label>
					<div class="col-md-7">
						<form:input type="password" path="password" id="password" class="form-control input-sm" required="required"/>
						<div class="has-error">
							<form:errors path="password" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email">Email</label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email" class="form-control input-sm" required="required"/>
						<div class="has-error">
							<form:errors path="email" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
		
	
			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Enregistrer" class="btn btn-primary btn-sm"/> ou <a href="<c:url value='/login' />">Annuler</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="S'inscrire" class="btn btn-primary btn-sm"/> ou <a href="<c:url value='/login' />">Annuler</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
</body>
<%@include file="footer.jsp" %>	
</html>