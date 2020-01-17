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
<script type="text/javascript">
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
</script>

  <title>Articles</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
</head>
     
 <body>


    <nav class="navbar navbar-expand-sm   navbar-light bg-light fixed-top">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/infos">About</a>
            </li>
            <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              Espace membre
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Se connecter</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/registration">Cr�er un compte</a>
              
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/topoList">Les topos</a>
          </li>
          <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath}/contact">Nous contacter</a>
          </li>
            <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              Articles r�cents
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/articles">Article 1</a>
              <a class="dropdown-item" href="#">Article 2</a>
              <a class="dropdown-item" href="#">Article 3</a>
              <a class="dropdown-item" href="#">Article 4</a>
              <a class="dropdown-item" href="#">Article 5</a>
              <a class="dropdown-item" href="#">Article 6</a>
            </div>
          </li> 
          </ul>
           <form class=" form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
          <div class="social-part">
            <i class="fa fa-facebook" aria-hidden="true"></i>
            <i class="fa fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-instagram" aria-hidden="true"></i>
          </div>
        </div>
      </nav>
      
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
</body>
<!-- Footer -->
<footer class="page-footer font-small mdb-color lighten-3 pt-4">

  <!-- Footer Elements -->
  <div class="container">

    <!--Grid row-->
    <div class="row">

      <!--Grid column-->
      <div class="col-lg-2 col-md-12 mb-4">

        <!--Image-->
        <div class="view overlay z-depth-1-half">
          <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(73).jpg" class="img-fluid"
            alt="">
          <a href="">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-2 col-md-6 mb-4">

        <!--Image-->
        <div class="view overlay z-depth-1-half">
          <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(78).jpg" class="img-fluid"
            alt="">
          <a href="">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-2 col-md-6 mb-4">

        <!--Image-->
        <div class="view overlay z-depth-1-half">
          <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(79).jpg" class="img-fluid"
            alt="">
          <a href="">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-2 col-md-12 mb-4">

        <!--Image-->
        <div class="view overlay z-depth-1-half">
          <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(81).jpg" class="img-fluid"
            alt="">
          <a href="">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-2 col-md-6 mb-4">

        <!--Image-->
        <div class="view overlay z-depth-1-half">
          <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(82).jpg" class="img-fluid"
            alt="">
          <a href="">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-2 col-md-6 mb-4">

        <!--Image-->
        <div class="view overlay z-depth-1-half">
          <img src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(84).jpg" class="img-fluid"
            alt="">
          <a href="">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>

      </div>
      <!--Grid column-->

    </div>
    <!--Grid row-->

  </div>
  <!-- Footer Elements -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">� 2020 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</html>
</html>
