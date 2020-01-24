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

  <title>Site 1</title>
 
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
 <div class="container m-5 p-5 border border-light">
 
 
 <div class="container">
<h1>Arudy</h1>
<p>
La vall�e d'Ossau est l'une des trois grandes vall�es de montagne de la r�gion b�arnaise. Elle s'�tire du nord au sud depuis Pau jusqu'au col du Pourtalet, � la fronti�re espagnole, sous le regard bienveillant du pic du Midi d'Ossau (2884 m�tres), � la silhouette bic�phale si caract�ristique. En partie basse se trouve le site d'escalade d'Arudy, lieu historique de la grimpe en vall�e d'Ossau. �On ne sait pas exactement � quand remonte la pratique de l'escalade arudienne. En 1958, de jeunes grimpeurs ont tent� d'escalader la Pointe centrale de Sesto (la grande pointe blanche) et en 1959, sont apparus les premiers trac�s. Dans les ann�es 1970, quelques voies furent pr�-�quip�es depuis le haut des sommets�, lit-on dans un texte publi� par Ville d'Arudy - Maison d'Ossau, en 1999. �Depuis, des gens viennent du monde entier s'entra�ner sur ce rocher-�cole�, lit-on ensuite sur le site Internet de la mairie d'Arudy. Si nous osons relayer telle quelle cette information sans chercher � la v�rifier, ajoutons une possible explication � ce succ�s plan�taire: un rocher calcaire tr�s vari� o� quelque 230 voies offrent un panel de difficult�s allant de l'initiation au haut niveau. De quoi drainer toute la plan�te grimpe dans la r�gion, ou au moins tous les Palois, qui en ont fait leur falaise...
Rocher & Escalade Arudy Falaise de rocher calcaire, dot� de grosses �cailles qui s�parent de petites dalles. Les voies mesurent jusqu'� 55 m�tres de hauteur, avec des possibilit�s de combiner les voies pour encha�ner deux longueurs. Les couennes sont r�parties sur plusieurs falaises, constituant autant de secteurs. Au coeur du cirque d'Anglas, un nouveau secteur d'initiation. Les autres: Houn de Laa (17 voies du 4c au 7b+), Sir�ne (15 voies du 5a au 7b+), V�nus (13 voies du 4b au 5c), Soleil (une vingtaine de voies dans toutes les nuances de 5 et de 6, et un secteur tr�s appr�ci� et fr�quent�), Gaufrette (une quinzaine de voies du 4c au 6b+), Sesto (une bonne vingtaine de voies, du 5a au 7b+) et La Fonderie (25 voies, 5b � 8b+) - ce dernier un cran au-dessus en termes de difficult� (avec une moyenne dans le septi�me degr�), sur une falaise calcaire d�versante � surplombante. L'�quipement est partout moderne, et r�cent dans certains secteurs.

Kids welcome
Le site convient parfaitement pour aller grimper avec des enfants et les initier aux joies de votre activit� favorite
Acc�s & Approche Arudy Depuis Pau, suivre la N134 en direction d'Oloron sur environ 8km. Ensuite, emprunter la D934 sur 15km, puis prendre la direction Arudy par la D287. � Arudy, sur l'axe Laruns - OloronSainte-Marie, se trouve LA grande surface Champion. Tourner devant ce magasin, quelques centaines de m�tres plus loin, prendre � droite � l'embranchement et se garer 200 m�tres apr�s sur le parking � gauche. � pied, passer devant la ferme d'Anglas et continuer jusqu'� la falaise (secteur Houn de Laa).
Quand y aller ?
La falaise est praticable toute l'ann�e s'il fait beau. Reste souvent humide apr�s une pluie. Au secteur Sesto, r�put� le plus ensoleill�, le soleil arrive vers 9h et s'en va vers 14-15h en hiver. Attention donc, en cette saison, � commencer t�t les jours o� il fait frisquet.

A savoir
Il y a d�j� eu, par le pass�, des interdictions temporaires sur le site d'Arudy pour cause d'oiseaux nicheurs (c'�tait le grand duc). Ce n'est plus le cas, mais restez souple et informez-vous.
Sites � proximit� Arudy Site de blocs de Pont de Camps, 170 passages du 3 au 7c.
Topos Arudy > Arudy, Escalades dans les Pyr�n�es-Atlantiques, Le topo, Rando �ditions, 2010.
> La vall�e d'Ossau, L.Alfonso et X. Buxo, 2d. Supercrack, 2011.
</p>
</div>

<section class="content-item" id="comments">
    <div class="container">         
    	<div class="row">
            <div class="col-sm-8">   
                <form>
                	<h3 class="pull-left">New Comment</h3>
                	<button type="submit" class="btn btn-normal pull-right">Submit</button>
                    <fieldset>
                        <div class="row">
                            <div class="col-sm-3 col-lg-2 hidden-xs">
                            	<img class="img-responsive" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                            </div>
                            <div class="form-group col-xs-12 col-sm-9 col-lg-10">
                                <textarea class="form-control" id="message" placeholder="Your message" required="required"></textarea>
                            </div>
                        </div>  	
                    </fieldset>
                </form>
                
                <h3>4 Comments</h3>
                
                <!-- COMMENT 1 - START -->
                <div class="media">
                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <ul class="list-unstyled list-inline media-detail pull-left">
                            <li><i class="fa fa-calendar"></i>27/02/2014</li>
                            <li><i class="fa fa-thumbs-up"></i>13</li>
                        </ul>
                        <ul class="list-unstyled list-inline media-detail pull-right">
                            <li class=""><a href="">Like</a></li>
                            <li class=""><a href="">Reply</a></li>
                        </ul>
                    </div>
                </div>
                <!-- COMMENT 1 - END -->
                
                <!-- COMMENT 2 - START -->
                <div class="media">
                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt=""></a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <ul class="list-unstyled list-inline media-detail pull-left">
                            <li><i class="fa fa-calendar"></i>27/02/2014</li>
                            <li><i class="fa fa-thumbs-up"></i>13</li>
                        </ul>
                        <ul class="list-unstyled list-inline media-detail pull-right">
                            <li class=""><a href="">Like</a></li>
                            <li class=""><a href="">Reply</a></li>
                        </ul>
                    </div>
                </div>
                <!-- COMMENT 2 - END -->
                
                <!-- COMMENT 3 - START -->
                <div class="media">
                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar3.png" alt=""></a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <ul class="list-unstyled list-inline media-detail pull-left">
                            <li><i class="fa fa-calendar"></i>27/02/2014</li>
                            <li><i class="fa fa-thumbs-up"></i>13</li>
                        </ul>
                        <ul class="list-unstyled list-inline media-detail pull-right">
                            <li class=""><a href="">Like</a></li>
                            <li class=""><a href="">Reply</a></li>
                        </ul>
                    </div>
                </div>
                <!-- COMMENT 3 - END -->
                
                <!-- COMMENT 4 - START -->
                <div class="media">
                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar4.png" alt=""></a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <ul class="list-unstyled list-inline media-detail pull-left">
                            <li><i class="fa fa-calendar"></i>27/02/2014</li>
                            <li><i class="fa fa-thumbs-up"></i>13</li>
                        </ul>
                        <ul class="list-unstyled list-inline media-detail pull-right">
                            <li class=""><a href="">Like</a></li>
                            <li class=""><a href="">Reply</a></li>
                        </ul>
                    </div>
                </div>
                <!-- COMMENT 4 - END -->
            
            </div>
        </div>
    </div>
</section>
</div>
</body>
<%@include file="footer.jsp" %>	
</html>