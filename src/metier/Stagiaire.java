package metier;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import meserreurs.MonException;
import persistance.DialogueBd;

public class Stagiaire {

	private String num;
	private String nom;
	private String prenom;
	private Date datenaissance;
	private String adresse;
	private String cpostal;
	private String ville;

	public Stagiaire(String num, String nom, String prenom, Date datenaissance,
			String adresse, String cpostal, String ville) {
		super();
		this.num = num;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.adresse = adresse;
		this.cpostal = cpostal;
		this.ville = ville;
	}

	/* traitements m�tier */

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public Date getDatenaissance() {
		return datenaissance;
	}

	public void setDatenaissance(Date datenaissance) {
		this.datenaissance = datenaissance;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getCpostal() {
		return cpostal;
	}

	public void setCpostal(String cpostal) {
		this.cpostal = cpostal;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public void insertionStagiaire() throws MonException {

		try {
			String mysql = "";
			DateFormat dateFormatpers = new SimpleDateFormat("yyyy-MM-dd");
			String dn = dateFormatpers.format(this.getDatenaissance());

			mysql = "INSERT INTO stagiaires (num, nom, prenom, datenaissance, adresse, cpostal, ville) ";
			mysql = mysql + " VALUES ( \'" + this.getNum() + "\', \'"
					+ this.getNom() + "\', \'" + this.getPrenom() + "\'";
			mysql = mysql + "\' " + dn + "\', ";
			mysql = mysql + this.getAdresse() + ", " + this.getCpostal()
					+ "\', \'" + this.getVille() + "\')";
			DialogueBd.insertionBD(mysql);
		} catch (MonException e) {
			throw e;
		}
	}

	public List<Stagiaire> rechercheLesStagiaires() throws MonException,
			ParseException {
		List<Object> rs;
		List<Stagiaire> mesStagiaires = new ArrayList<Stagiaire>();
		int index = 0;
		try {
			String mysql = "";

			mysql = "SELECT * FROM stagiaires ORDER BY num ASC";

			rs = DialogueBd.lecture(mysql);

			while (index < rs.size()) {
				// On crée un stagiaire
				Stagiaire unS = new Stagiaire();
				// il faut redecouper la liste pour retrouver les lignes
				unS.setNum(rs.get(index + 0).toString());
				unS.setNom(rs.get(index + 1).toString());
				unS.setPrenom(rs.get(index + 2).toString());
				DateFormat dateFormatpers = new SimpleDateFormat("yyyy-MM-dd");
				unS.setDatenaissance(dateFormatpers.parse(rs.get(index + 3)
						.toString()));
				unS.setAdresse(rs.get(index + 4).toString());
				unS.setCpostal(rs.get(index + 5).toString());
				unS.setVille(rs.get(index + 6).toString());
				// On incr�mente tous les 7 champs
				index = index + 7;
				mesStagiaires.add(unS);
			}

			return mesStagiaires;

		} catch (MonException e) {
			System.out.println(e.getMessage());
			throw e;
		}

	}

	public Stagiaire() {
		super();
	}
}
