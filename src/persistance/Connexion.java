package persistance;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import meserreurs.MonException;

public class Connexion {

	private static Connexion instance = null;

	// On utilise un singleton
	public static Connexion getInstance() {
		if (instance == null)
			instance = new Connexion();

		return instance;

	}

	// on rend le constructeur privï¿½
	// pour empï¿½cher toute crï¿½ation d'instance
	private Connexion() {
	}

	// Connexion Ã  la base de donnÃ©es Tomcat
	public Connection getConnexion() throws MonException {
		Connection conn = null;
		try {
			Context ctxt = new InitialContext(); // On rï¿½cupï¿½re l'environnement
			Context envCtx = (Context) ctxt.lookup("java:comp/env");
			// On recherche la data source
			DataSource ds = (DataSource) envCtx.lookup("jdbc/DSMesStages");
			conn = ds.getConnection();

		} catch (SQLException e) {
			throw new MonException(e.getMessage());
		} catch (Exception e) {
			throw new MonException(e.getMessage());
		}
		return conn;
	}

	// public Connection getConnexion() throws MonException {
	// Connection conn = null;
	// try {
	// Context ctxt = new InitialContext();
	// // On recherche la data source
	// DataSource ds = (DataSource) ctxt.lookup("java:/DSStages");
	// conn = ds.getConnection();
	// } catch (SQLException e) {
	// throw new MonException(e.getMessage());
	// } catch (Exception e) {
	// throw new MonException(e.getMessage());
	// }
	// return conn;
	// }
	
	/*
	// Pour tomcat
	   // On récupère l'environnement
	   Context envCtx = (Context) ctxt.lookup("java:comp/env");
	   // On recherche la data source
    DataSource ds = (DataSource) envCtx.lookup("jdbc/DSMesStages");
    
    // pour Jboss
    // On recherche la data source
//    DataSource ds = (DataSource) ctxt.lookup("java:/DSStages");
*/

}
