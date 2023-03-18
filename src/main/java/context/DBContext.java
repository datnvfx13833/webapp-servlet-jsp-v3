package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://" + serverName + ":" + portNumber + "\\"
					+ instance + ";databaseName=" + dbName;
		if (instance == null || instance.trim().isEmpty()) {
			url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
		}
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(url, userID, password);
	}
	
	private final String serverName = "localhost";
	private final String dbName = "ShoppingDB";
	private final String portNumber = "3306";
	private final String instance = ""; //LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
	private final String userID = "root";
	private final String password = "NVD_0606";
}
