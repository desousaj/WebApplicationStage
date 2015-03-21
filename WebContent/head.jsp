<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>${title}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
  		<meta name="description" content="">
  		<meta name="author" content="">
		<link rel="stylesheet" href="css/style.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="shortcut icon" href="images/favicon.jpg">
		 
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>	
		<script type="text/javascript" src="js/js_verification.js"></script>
	</head>



	<body>
	
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp" style="padding : 2px 15px 2px 4px;"><img src="images/favicon.jpg" height="66px" width="60px" class="img-thumbnail" alt="Gestion Stage"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      
<!--         <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
        <li><a href="Controleur?action=saisieStage">Créer un Stage</a></li>
        <li><a href="Controleur?action=afficheStage">Afficher les Stages</a></li>
      </ul>
      
      <form class="navbar-form navbar-left" role="search" method="post" action="Controleur" onsubmit="return verif();">
        <input type="hidden" name="type" value="recherche" id="type" /> 
<input type="hidden" name="action" value="rechercherStages" />
						<div class="form-group">
 							<input class="form-control" type="text" name="libelle" id="libelle" placeholder="Entrez le nom d'un stage" />
						</div>
        <button type="submit" class="btn btn-default"name="rechercher" value="Rechercher">Rechercher</button>
      </form>
				  
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Infos<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
          	<li>Created by : </li>
          	<li>- Jeremy De Sousa</li>
          	<li>- Quentin Degrange</li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
	
	<c:if test="${not empty MesSucces}">	
		<div class="alert alert-success alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <strong>Succès !</strong> ${MesSucces}
		</div>
	</c:if>
	
	<c:if test="${not empty MesErreurs}">
		<div class="alert alert-danger alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <strong>Erreur !</strong> ${MesErreurs}
		</div>
	</c:if>
		
<!-- 	</body> -->
<!-- </html> -->
