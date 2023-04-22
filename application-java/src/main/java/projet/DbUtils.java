package projet;

import java.sql.*;
import java.util.Properties;

// Classe pour gérer la base de donnée
public class DbUtils {
    // Variable permettant d'utiliser la connexion à la BDD
    public static Connection conn;

    // Méthode de connexion
    public static void connect() {
        try {
            // Url de connexion (de la forme jdbc:postgresql://[host]/[base de donnée]?currentSchema=[schéma] )
            String url = "jdbc:postgresql://localhost/postgres?currentSchema=biblio";
            Properties props = new Properties();
            // Nom d'utilisateur (ici postgres)
            props.setProperty("user", "postgres");
            // Mot de passe (ici postgres)
            props.setProperty("password", "postgres");
            // Création de la connexion
            conn = DriverManager.getConnection(url, props);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    // Interroger la base de donnée ("query" est une requête SQL)
    public static String executeQuery(String query) {
        // Vérifier que la connexion a bien été créée
        if (conn != null) {
            try {
                String result = "";
                // Créer une requête SQL
                Statement st = conn.createStatement();
                // Executer la requête
                ResultSet rs = st.executeQuery(query);
                ResultSetMetaData metadata = rs.getMetaData();
                // Récupérer le nombre de colonnes
                int columnCount = metadata.getColumnCount();
                // Tant qu'une nouvelle ligne existe dans la réponse
                while (rs.next()) {
                    String row = "";
                    // Ajouter chaque colonne de la ligne avec une virgule
                    for (int i = 1; i <= columnCount; i++) {
                        row += rs.getString(i) + ", ";
                    }
                    // Ajouter la ligne au résultat avec un retour à la ligne
                    result += row + "\n";
                }
                return result;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        // Si la connexion n'existe pas, renvoyer "erreur"
        return "error";
    }


}
