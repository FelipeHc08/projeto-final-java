
package ConnectionJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class java {
    
    public Connection conexaoBD() throws ClassNotFoundException{
    Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/projeto?user=root&password=";
            con = DriverManager.getConnection(url);
            
            
        } catch (SQLException e) {
        }
        return con;
    }

            

}
