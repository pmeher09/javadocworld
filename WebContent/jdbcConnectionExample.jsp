<!DOCTYPE html>
<html>
<head>
<title>JDBC Connection Example</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="content-left">
				<jsp:include page="left_menu.html" />
				</div>
			<div id="content-right">
				<div id="sub-content-left">
					<jsp:include page="top_add.html" />
						<div id="div-program">
						<jsp:include page="navigation_link.jsp" />
						<div id="code-question">
						<h1>How
						to create JDBC connection in Java?</h1></div>
<pre class="prettyprint" id="div-code">
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCConnector {
	// JDBC driver name
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	// Database URL
	static final String DATABASE_URL = "jdbc:mysql://localhost/";
	// Database user credentials
	static final String USER_NAME = "username";
	static final String PASSWORD = "password";

	public static void main(String[] args) {

		Connection conn = null;
		Statement stmt = null;

		try {
			// Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			// Open a connection
			System.out.println("Connecting to Database");
			conn = DriverManager.getConnection(DATABASE_URL, USER_NAME,
					PASSWORD);
			// Execute a query
			System.out.println("Creating Database");
			stmt = conn.createStatement();
			System.out.println("Database Connection Created Successfully");

		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
				se2.printStackTrace();
			}
			try {
				if (conn != null)
					//Close Connection
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}
}

</pre>
						</div>
		<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
<jsp:include page="contentBottom.jsp" />				
<jsp:include page="suggestionProgramList1.jsp" />
					</div>
				<div id="sub-content-right">
			<jsp:include page="contentRight.jsp" />
				</div>
			</div>
		</div>
		<jsp:include page="footer.html" />
	</div>
</body>
</html>
