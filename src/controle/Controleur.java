package controle;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meserreurs.MonException;
import metier.Stage;
import metier.Stagiaire;

@WebServlet("/Controleur")
public class Controleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ACTION_TYPE = "action";

	// Action sur les stages
	private static final String SAISIE_STAGE = "saisieStage";
	private static final String AFFICHER_STAGE = "afficheStage";
	private static final String AJOUT_STAGE = "ajoutStage";
	private static final String MODIFIER_STAGE = "modifierStage";
	private static final String RECHERCHER_STAGE = "rechercherStages";
	private static final String SUPPRIMER_STAGE = "supprimerStage";

	// Action sur les stagiaires
	private static final String CHERCHER_STAGIAIRE = "chercheStagiaire";
	private static final String SAISIE_STAGIAIRE = "saisieStagiaire";
	private static final String AFFICHER_STAGIAIRE = "afficheStagiaire";
	private static final String AJOUT_STAGIAIRE = "ajoutStagiaire";
	private static final String MODIFIER_STAGIAIRE = "modifierStagiaire";
	private static final String ERROR_PAGE = null;

	// le format est une combinaison de MM dd yyyy avec / ou �
	// exemple dd/MM/yyyy
	public Date conversionChaineenDate(String unedate, String unformat)
			throws Exception {
		Date datesortie;
		// on d�finit un format de sortie
		SimpleDateFormat defFormat = new SimpleDateFormat(unformat);
		datesortie = defFormat.parse(unedate);
		return datesortie;
	}

	protected void processusTraiteRequete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,
			MonException, Exception {
		String actionName = request.getParameter(ACTION_TYPE);
		String destinationPage = ERROR_PAGE;
		// execute l'action
		switch (actionName) {
		// Application sur les stages
		case SAISIE_STAGE:
			request.setAttribute("stage", new Stage());
			destinationPage = "/saisieStage.jsp";
			break;
		case AJOUT_STAGE:
			destinationPage = ajoutStage(request);
			break;
		case AFFICHER_STAGE:
			destinationPage = afficherStages(request);
			break;
		case MODIFIER_STAGE:
			destinationPage = modifierStage(request);
			break;
		case SUPPRIMER_STAGE:
			destinationPage = supprimerStage(request);
			break;
		case RECHERCHER_STAGE:
			destinationPage = rechercherStages(request);
			break;

		// Application sur les stagiaires
		case SAISIE_STAGIAIRE:
			request.setAttribute("stagiaire", new Stagiaire());
			destinationPage = "/saisieStagiaire.jsp";
			break;
		case AJOUT_STAGIAIRE:
			destinationPage = ajoutStagiaire(request);
			break;

		case AFFICHER_STAGIAIRE:
			destinationPage = afficherStagiaires(request);
			break;
		}
		// Redirection vers la page jsp appropriee
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher(destinationPage);
		dispatcher.forward(request, response);
	}

	private String supprimerStage(HttpServletRequest request) {
		String id = request.getParameter("id");
		String destinationPage = "";
		if (id != null && id != "") {
			Stage unStage = new Stage();
			try {
				unStage.suppressionStage(id);
				destinationPage = "/index.jsp";
				request.setAttribute("MesSucces",
						"Le stage a bien été supprimer !");
			} catch (Exception e) {
				request.setAttribute("MesErreurs", e.getMessage());
				System.out.println(e.getMessage());
			}
		}
		return destinationPage;
	}

	/**
	 * Méthode qui permet d'afficher la page avec les données actuels du stage à
	 * modifier
	 * 
	 * @param request
	 * @return
	 */
	private String modifierStage(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	private String afficherStagiaires(HttpServletRequest request)
			throws ParseException {
		String destinationPage;
		List<Stagiaire> listeStagiaires;
		try {
			Stagiaire unStagiaire = new Stagiaire();
			request.setAttribute("affichageListe", 1);
			listeStagiaires = unStagiaire.rechercheLesStagiaires();
			request.setAttribute("liste", listeStagiaires);
			destinationPage = "/afficherStagiaires.jsp";
		} catch (MonException e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "/Erreur.jsp";

		}
		return destinationPage;
	}

	private String ajoutStagiaire(HttpServletRequest request) {
		String destinationPage = "";
		try {
			Stagiaire unStagiaire = new Stagiaire();
			unStagiaire.setNum(request.getParameter("num"));
			unStagiaire.setNom(request.getParameter("nom"));
			unStagiaire.setNom(request.getParameter("prenom"));
			unStagiaire.setVille(request.getParameter("ville"));
			unStagiaire.setCpostal(request.getParameter("codepostal"));
			unStagiaire.setAdresse(request.getParameter("adresse"));
			unStagiaire.setDatenaissance(conversionChaineenDate(
					request.getParameter("datedenaissance"), "yyyy/MM/dd"));
			unStagiaire.insertionStagiaire();
			;
			destinationPage = "/index.jsp";
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			System.out.println(e.getMessage());
		}
		return destinationPage;
	}

	private String afficherStages(HttpServletRequest request)
			throws ParseException {
		String destinationPage;
		List<Stage> listeStages;
		try {
			Stage unStage = new Stage();
			request.setAttribute("affichageListe", 1);
			listeStages = unStage.rechercheLesStages();
			request.setAttribute("liste", listeStages);
			destinationPage = "/afficherStages.jsp";
		} catch (MonException e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "/Erreur.jsp";

		}
		return destinationPage;
	}

	private String ajoutStage(HttpServletRequest request) {
		String destinationPage = "";
		try {
			Stage unStage = new Stage();
			unStage.setId(request.getParameter("id"));
			unStage.setLibelle(request.getParameter("libelle"));
			unStage.setDatedebut(conversionChaineenDate(
					request.getParameter("datedebut"), "yyyy/MM/dd"));
			unStage.setDatefin(conversionChaineenDate(
					request.getParameter("datefin"), "yyyy/MM/dd"));
			unStage.setNbplaces(Integer.parseInt(request
					.getParameter("nbplaces")));
			unStage.setNbinscrits(Integer.valueOf(
					(request.getParameter("nbplaces"))).intValue());
			unStage.setNbinscrits(Integer.valueOf(
					(request.getParameter("nbinscrits"))).intValue());
			unStage.insertionStage();
			destinationPage = "/index.jsp";
			request.setAttribute("MesSucces", "Le stage a bien été ajouté !");
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			System.out.println(e.getMessage());
		}
		return destinationPage;
	}
	
	private String rechercherStages(HttpServletRequest request) {
		String destinationPage = "";
		List<Stage> listeStages;
		try {
			Stage unStage = new Stage();
			request.setAttribute("affichageListe", 1);
			listeStages = unStage.rechercheLesStages(request.getParameter("libelle"));
			request.setAttribute("liste", listeStages);
			request.setAttribute("libelle", request.getParameter("libelle"));
			
//			unStage.setId(request.getParameter("id"));
//			unStage.setLibelle(request.getParameter("libelle"));
//			unStage.setDatedebut(conversionChaineenDate(
//					request.getParameter("datedebut"), "yyyy/MM/dd"));
//			unStage.setDatefin(conversionChaineenDate(
//					request.getParameter("datefin"), "yyyy/MM/dd"));
//			unStage.setNbplaces(Integer.parseInt(request
//					.getParameter("nbplaces")));
//			unStage.setNbinscrits(Integer.valueOf(
//					(request.getParameter("nbplaces"))).intValue());
//			unStage.setNbinscrits(Integer.valueOf(
//					(request.getParameter("nbinscrits"))).intValue());
//			unStage.insertionStage();
			destinationPage = "/rechercherStages.jsp";
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			System.out.println(e.getMessage());
			destinationPage = "/Erreur.jsp";
		}
		return destinationPage;
	}

	// L'appel de cette procédure se fait avec :

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processusTraiteRequete(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processusTraiteRequete(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			;
		}
	}
}