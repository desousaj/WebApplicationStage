<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%-- 	pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
<!-- <title>Recherche de stages</title> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- <meta name="description" content=""> -->
<!-- <meta name="author" content=""> -->


<!-- <link rel="stylesheet" href="css/style.css" /> -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->


<!-- <link rel="shortcut icon" href="images/favicon.jpg"> -->

<!-- <script type="text/javascript" src="js/jquery.min.js"></script> -->
<!-- <script type="text/javascript" src="js/bootstrap.min.js"></script> -->
<!-- <script type="text/javascript" src="js/js_verification.js"></script> -->
<!-- </head> -->

<!-- <body> -->
<%-- 	<c:if test="${not empty MesSucces}">	 --%>
<!-- 		<div class="alert alert-success alert-dismissible" role="alert"> -->
<!-- 		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
<%-- 		  <strong>Succ�s !</strong> ${MesSucces} --%>
<!-- 		</div> -->
<%-- 	</c:if> --%>
	
<%-- 	<c:if test="${not empty MesErreurs}"> --%>
<!-- 		<div class="alert alert-danger alert-dismissible" role="alert"> -->
<!-- 		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
<%-- 		  <strong>Erreur !</strong> ${MesErreurs} --%>
<!-- 		</div> -->
<%-- 	</c:if> --%>
<!-- 	<P> -->
<!-- 		<A href="index.jsp"><FONT face="Arial" color="#004080">Retour -->
<!-- 				Accueil</FONT></A> -->
<!-- 	</P> -->

<%@ include file="head.jsp" %>
<%@page import="java.util.Date,java.text.*"%>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<h3 class="text-center">Rechercher un stage</h3>
					</div>
				</div>


				<div>
					<input type="hidden" name="uneErreur" value="${MesErreurs}"
						id="id_erreur">
					<form method="post" action="Controleur" onsubmit="return verif();">
						<input type="hidden" name="type" value="recherche" id="type" /> <input
							type="hidden" name="action" value="rechercherStages" />
						<div class="form-group">
							<label for="libelle">Libell�</label><input class="form-control"
								type="text" name="libelle" value="${libelle}" id="libelle" />
						</div>

						<button type="submit" class="btn btn-default" name="rechercher"
							value="Rechercher">Rechercher</button>
					</form>
				</div>


				<div class="row clearfix">
					<div class="col-md-12 column">
						<table data-height="299" data-click-to-select="true"
							class="table table-hover">
							<thead>
								<tr>
									<th data-field="numero" data-checkbox="true" width="10%">Numero</th>
									<th data-field="libelle" data-align="right">Libell�</th>
									<th data-field="datededebut" data-align="center" width="15%">Date
										d�but</th>
									<th data-field="datedefin" data-align="" width="15%">Date
										fin</th>
									<th data-field="nombredeplaces" data-align="" width="10%">Nombre
										de places</th>
									<th data-field="nombredinscrits" data-align="" width="10%">Nombre
										d'inscrits</th>
									<th data-field="editer" data-align="" width="10%">Editer</th>
									<th data-field="supprimer" data-align="" width="10%">Supprimer</th>
								</tr>
							</thead>

							<c:forEach items="${liste}" var="item">
								<tr>
									<td>${item.id}</td>
									<td>${item.libelle}</td>
									<td><fmt:formatDate type="both" dateStyle="short"
											timeStyle="short" value="${item.datedebut}"
											pattern="dd/MM/yyyy" /></td>
									<td><fmt:formatDate type="both" dateStyle="short"
											timeStyle="short" value="${item.datefin}"
											pattern="dd/MM/yyyy" /></td>

									<td>${item.nbplaces}</td>
									<td>${item.nbinscrits}</td>
									<td>
										<form method="post" action="Controleur" onsubmit="">
											<input type="hidden" name="id" value="${item.id}" id="id" />
											<input type="hidden" name="action"
												value="aficherModifierStage" />
											<button class="btn btn-default">Editer</button>
										</form>
									</td>
									<td>
										<form method="post" action="Controleur" onsubmit="">
											<input type="hidden" name="id" value="${item.id}" id="id" />
											<input type="hidden" name="action" value="supprimerStage" />
											<button class="btn btn-default" onclick="return confirm('Etes-vous s�r de vouloir supprimer ce stage ?');">Supprimer</button>
										</form>
									</td>

								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
