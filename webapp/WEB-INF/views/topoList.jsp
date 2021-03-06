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
        <title>Liste des topos</title>
        <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
       <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
  
</head>
     
 <body>
 <nav class="navbar-fixed-top"><%@include file="navbar.jsp" %>	  </nav>	
<%@include file="_include/header.jsp" %>
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Liste des Topos </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>nom du topo</th>
				        <th>lieu</th>
				        <th>Disponible</th>
				        <th>Description</th>
				        <th>Date de publication</th>
				      
				        	<th width="100"></th>
				        
				        	<th width="100"></th>
				     
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${topo}" var="topo">
					<tr>
						<td>${topo.toponame}</td>
						<td>${topo.lieu}</td>
						<td>${topo.disponible}</td>
						<td>${topo.description}</td>
						<td>${topo.datePublication}</td>
					    
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		 	<div class="well">
		 		<a href="<c:url value='/topoForm' />">Ajouter un topo</a>
		 	</div>
	 	
   	</div>
   
</body>
<%@include file="_include/footer.jsp" %>	
</html>