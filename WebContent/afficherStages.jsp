<%@ include file="head.jsp" %>
<%@page import="java.util.Date,java.text.*"%>
		
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<h3 class="text-center">
								Listing des Stages
							</h3>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<table data-height="299" data-click-to-select="true" class="table table-hover">
							    <thead>
							        <tr>
							            <th data-field="numero" data-checkbox="true" width="10%">Numero</th>
							            <th data-field="libelle" data-align="right">Libellé</th>
							            <th data-field="datededebut" data-align="center" width="15%">Date début</th>
							            <th data-field="datedefin" data-align="" width="15%">Date fin</th>
							            <th data-field="nombredeplaces" data-align="" width="10%">Nombre de places</th>
							            <th data-field="nombredinscrits" data-align="" width="10%">Nombre d'inscrits</th>
							            <th data-field="editer" data-align="" width="10%">Editer</th>							            
							            <th data-field="supprimer" data-align="" width="10%">Supprimer</th>
							        </tr>
							    </thead>
							 
							<tbody class=".table-hover">
							<c:forEach  items="${liste}"  var="item" >
							 <tr>
							    <td>${item.id}</td>
							    <td>${item.libelle}</td>
							      <td>
							      <fmt:formatDate type="both" dateStyle="short"
							          timeStyle="short" value="${item.datedebut}" pattern="dd/MM/yyyy"/>
							      </td>
							       <td>
							       <fmt:formatDate type="both" dateStyle="short"
							          timeStyle="short" value="${item.datefin}" pattern="dd/MM/yyyy" />
							      </td>
							       
							      <td>${item.nbplaces}</td>
								  <td>${item.nbinscrits}</td>
								  <td>
								  	<form method="post" action="Controleur" onsubmit="">
										<input type="hidden" name="id" value="${item.id}"  id="id"/>
			  							<input type="hidden" name="action" value="aficherModifierStage" />
									  	<button class="btn btn-default">Editer</button>
									  </form>
								  </td>
								  <td>
									  <form method="post" action="Controleur" onsubmit="">
										<input type="hidden" name="id" value="${item.id}"  id="id"/>
			  							<input type="hidden" name="action" value="supprimerStage" />
									  	<button class="btn btn-default" onclick="return confirm('Etes-vous sûr de vouloir supprimer ce stage ?');">Supprimer</button>
									  </form>
								  </td>							     
							  </tr>
							 </c:forEach>
							 </tbody> 
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>			
		</body>
	</html>
