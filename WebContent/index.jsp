<%@ include file="head.jsp" %>
<%@page import="java.util.Date,java.text.*"%>

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
											<a href="Controleur?action=rechercherStages">Recherche d'un stage</a>
										</div>
									</div>
								</div>
<!-- 								Not implemented yet -->
<!-- 								<div class="panel panel-default"> -->
<!-- 									<div class="panel-heading"> -->
<!-- 										 <a class="panel-title" data-toggle="collapse" data-parent="#panel-934093" href="#panel-element-120256">Gestion des stagiaires</a> -->
<!-- 									</div> -->
<!-- 									<div id="panel-element-120256" class="panel-collapse collapse">										 -->
<!-- 										<div class="panel-body"> -->
<!-- 											<a href="Controleur?action=rechercheStage">Cr�ation d'un stagiaire</a> -->
<!-- 										</div> -->
<!-- 										<div class="panel-body"> -->
<!-- 											<a href="Controleur?action=afficheStagiaire">Afficher les stagiaires</a> -->
<!-- 										</div> -->
<!-- 										<div class="panel-body"> -->
<!-- 											<a href="Controleur?action=rechercheStage">Rechercher un stagiaire</a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
