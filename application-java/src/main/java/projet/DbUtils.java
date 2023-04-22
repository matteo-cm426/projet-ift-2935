package projet;

import java.sql.*;
import java.util.Properties;

public class DbUtils {
    public static Connection conn;

    public static void connect() {

        try {
            String url = "jdbc:postgresql://localhost/postgres?currentSchema=biblio";
            Properties props = new Properties();
            props.setProperty("user", "postgres");
            props.setProperty("password", "postgres");
            conn = DriverManager.getConnection(url, props);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static String executeQuery(String query) {
        if (conn != null) {
            try {
                String result = "";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                ResultSetMetaData metadata = rs.getMetaData();
                int columnCount = metadata.getColumnCount();
                while (rs.next()) {
                    String row = "";
                    for (int i = 1; i <= columnCount; i++) {
                        row += rs.getString(i) + ", ";
                    }
                    result += row + "\n";
                }
                return result;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return "error";
    }


}
