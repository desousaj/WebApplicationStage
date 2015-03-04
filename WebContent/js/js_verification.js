/*
 * Vérifie si les champs remplis par l'utilisateur ne sont pas vides.
 *TODO faire les vérificatons plus précises
 */
function verif() {
	var passe = false;
	if (document.getElementById("libelle").value == "") {
		window.alert('Le libelle est vide !');
		passe = true;
	}
	if (document.getElementById("datedebut").value == "") {
		window.alert('La date de début n\'est pas saisi !');
		passe = true;
	}
	if (document.getElementById("datefin").value == "") {
		window.alert('La date de fin n\'est pas saisie !');
		passe = true;
	}
	if (passe == true) {
		return false;
	} else {
		return true;
	}
}

function Chargement() {
	var obj = document.getElementById("id_erreur");
	if (obj.value != '')
		alert('Erreur signalée  : "' + obj.value + "'");
}