<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Gestion des stages</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
  		<meta name="description" content="">
  		<meta name="author" content="">
		<link rel="stylesheet" href="css/style.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		

		<link rel="shortcut icon" href="images/favicon.png">
		 
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>	
		<script type="text/javascript" src="js/js_verification.js"></script>
	</head>



	<body>
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<h3 class="text-center">
								Gestion des Stages
							</h3>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<p>
								Nous sommes le <%= DateFormat.getDateTimeInstance(DateFormat.FULL,DateFormat.FULL).format(new Date()) %>
							</p>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<div class="panel-group" id="panel-934093">
								<div class="panel panel-default">
									<div class="panel-heading">
										 <a class="panel-title" data-toggle="collapse" data-parent="#panel-934093" href="#panel-element-771486">Gestion des stages</a>
									</div>
									<div id="panel-element-771486" class="panel-collapse collapse in">
										<div class="panel-body">
											<a href="Controleur?action=saisieStage">Saisie d'un stage</a>
										</div>
										<div class="panel-body">
											<a href="Controleur?action=afficheStage">Affichage liste des stages</a>
										</div>
										<div class="panel-body">
											<a href="Controleur?action=rechercheStage">Recherche d'un stage</a>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										 <a class="panel-title" data-toggle="collapse" data-parent="#panel-934093" href="#panel-element-120256">Gestion des stagiaires</a>
									</div>
									<div id="panel-element-120256" class="panel-collapse collapse">										
										<div class="panel-body">
											<a href="Controleur?action=rechercheStage">Création d'un stagiaire</a>
										</div>
										<div class="panel-body">
											<a href="Controleur?action=afficheStagiaire">Afficher les stagiaires</a>
										</div>
										<div class="panel-body">
											<a href="Controleur?action=rechercheStage">Rechercher un stagiaire</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
