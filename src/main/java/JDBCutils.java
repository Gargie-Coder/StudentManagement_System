import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.io.InputStream;
import java.io.IOException;

public class JDBCutils {

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {

        Properties properties = new Properties();

        try (InputStream input = JDBCutils.class
                .getClassLoader()
                .getResourceAsStream("db.properties")) {

            if (input == null) {
                throw new SQLException("db.properties file not found");
            }

            properties.load(input);

        } catch (IOException e) {
            throw new SQLException("Could not load db.properties", e);
        }

        String url = properties.getProperty("db.url");
        String user = properties.getProperty("db.user");
        String password = properties.getProperty("db.password");

        return DriverManager.getConnection(url, user, password);
    }

    public static void closeConnection(Statement stmnt, Connection connect)
            throws SQLException {

        if (stmnt != null) {
            stmnt.close();
        }

        if (connect != null) {
            connect.close();
        }
    }
}