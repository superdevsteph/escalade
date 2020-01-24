<script type="text/javascript">
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
</script>

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
              gestion de compte
            </a>
            <div class="dropdown-menu sm-menu">
             <a class="dropdown-item" href="${pageContext.request.contextPath}/espaceMembre">espace membre</a>
             <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Se connecter</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/newuser2">Créer un compte</a>
              
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/topoList">Les topos</a>
          </li>
         
            <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle"  id="navbardrop" data-toggle="dropdown">
             Les sites
            </a>
            <div class="dropdown-menu sm-menu">
            <a class="dropdown-item" href="${pageContext.request.contextPath}/sites">Les sites</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/site1">site1</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/site1">site2</a>
             <a class="dropdown-item" href="${pageContext.request.contextPath}/site1">site3</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/site1">site4</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/site1">site5</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/site1">site6</a>
            </div>
          </li> 
          </ul>
       
        </div>
      </nav>