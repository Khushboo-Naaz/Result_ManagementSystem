package Project;
import java.sql.*;

public class ConnectionProvider {

	    public Connection c;
	    public Statement s;
	 
	    public ConnectionProvider(){
	        try{
	            Class.forName("com.mysql.jdbc.Driver");
	            c = DriverManager.getConnection("jdbc:mysql:///project2","root","lion");
	            s = c.createStatement();
	        }catch(Exception e) {
	            e.printStackTrace();
	        }
	    }
}
