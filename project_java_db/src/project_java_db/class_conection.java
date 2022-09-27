
package project_java_db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
        
       
public class class_conection {
// crete atributtes

    private static final String URL = "jdbc:mysql://localhost:3306/db_contact_book?useTimezone=true&serverTimezone=UTC";
    private static final String user = "root";
    private static final String password = "rj3po0";

    public static Connection conector() throws SQLException {

        try {
            return DriverManager.getConnection(URL, user, password);
        } catch (SQLException erro) {
            throw new SQLException("error in conection with database.\n causa:" + erro.getMessage());
        }// END try catch
    }// END method conector with try catch   
}// class
