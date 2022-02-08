package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
	public static Connection getConnection() {
		Connection conn = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager
					.getConnection(url, "shop", "1234");
		} catch (ClassNotFoundException|SQLException e) {
			
			e.printStackTrace();
		}
		return conn;
	}

}
