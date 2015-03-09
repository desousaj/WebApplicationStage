<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Ajout d'un stages</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
  		<meta name="description" content="">
  		<meta name="author" content="">
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/jquery-ui.min.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
		

		<link rel="shortcut icon" href="images/favicon.png">
		 
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>	
		<script type="text/javascript" src="js/js_verification.js"></script>
		
		<!-- TODO mettre dans js  -->
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<script>
		  $(function() {
		    $("#datedebut").datepicker();
		    $("#datefin").datepicker();
		  });
  		</script>
	</head>


<body  onLoad="Chargement();">

<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<h3 class="text-center">
								Formulaire d'ajout d'un stage
							</h3>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<input type ="hidden" name="uneErreur"  value="${MesErreurs}"  id ="id_erreur" >
							<form method="post" action="Controleur" onsubmit="return verif();">
							<input type="hidden" name="type" value="ajout"  id="type"/>
  							<input type="hidden" name="action" value="ajoutStage" />
								<div class="form-group">
									 <label for="id">Numéro</label><input class="form-control" type="text" name="id" value="${stage.id}" id="id" />
								</div>
								<div class="form-group">
									 <label for="libelle">Libellé</label><input class="form-control" type="text" name="libelle" value="${stage.libelle}" id="libelle" />
								</div>
								<div class="form-group">
									 <label for="datedebut">Date de début du stage</label><input class="form-control" type="text" name="datedebut" value="${stage.datedebut}" id="datedebut" />
								</div>
								<div class="form-group">
									 <label for="datefin">Date de fin de stage</label><input class="form-control" type="text" name="datefin" value="${stage.datefin}" id="datefin" />
								</div>
								<div class="form-group">
									 <label for="nbplaces">Nombre de places</label><input class="form-control" type="text" name="nbplaces" value="${stage.nbplaces}" id="nbplaces" />
								</div>
								<div class="form-group">
									 <label for="nbinscrits">Nombre d'inscrits</label><input class="form-control" type="text" name="nbinscrits" value="${stage.nbinscrits}" id="nbinscrits" />
								</div>
								
								<button type="submit" class="btn btn-default" name="ajouter" value="Ajouter">Ajouter</button>
								<button type="reset" class="btn btn-default" name="reset" value="Reset">Reset</button>
							
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>
