<!DOCTYPE html>
<html>
<head>
<title>DAO design pattern Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="DAO design pattern Java Example" />
<meta name="keywords"
	content="DAO design pattern">
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
						<h1>DAO design pattern Example in Java</h1></div>
						<div id="code-answer">
						<p>
						DAO (Data Access Object)  design pattern is a popular design pattern to implement 
						persistence layer of Java application.
</p>
<p>By using DAO design pattern we can make View layer completely independent to DAO layer and 
only Service layer has dependency on it but it is also abstracted by using DAO interface.
</p><br /><br />
<p><span style="color: #111; font-size: 16px;"><b>How we implement it?</b></span><br />
</p>
<p><span style="color: #111; font-size: 16px;">DAO Interface :</span>This interface defines the standard operations to be performed on a model object(s).
</p>
<p><span style="color: #111; font-size: 16px;">DAO Class which implements DAO Interface : </span>This class implements above interface and has the implementation of all interface methods,  responsible to get data from database.
</p>
<p><span style="color: #111; font-size: 16px;">Model Object :</span> These are simple POGO classes having setter/getter methods, data retrieved from database are stored in this model using DAO class.
</p><br /><br /><br />
<p style=" text-align:  center;"><b>View - Service - DAO - JDBC(DataBase)</b></p>
<br /><br /><br />
<p><span style="color: #111; font-size: 16px;"><b>Advantages:</b></span></p>

<ul><li>Keep persistence logic in a separate layer called Data Access Layer, so any change/update in persistence mechanism keep other layer safe.</li> 
<li>JUNIT can be used to test the DAO layer independently using mock data. </li>
<li>As all implementation code are encapsulated in side DAO class and other layer use DAO interface to get the data, so underlying persistence mechanism not leak out of the DAO layer.</li>
</ul> <br /><br /> 
<b>Example:</b><br />
						</div>
<pre class="prettyprint" id="div-code">
    // Create Data Access Object Interface
	public interface BankAccountDAO{
		   public boolean deposit(Account account);
		   public boolean withdraw(Account account);

	}
	
	//Create concrete class implementing above interface
		public class BankAccountDAOImpl implements BankAccountDAO{
		public boolean deposit(Account account){
			   //code here
		   }
		public boolean withdraw(Account account){
			   //code here
		   }
	}
	//Create Value Object
	class Account{
		private long accountId;
		private double amount;s
		private double interest;
		public long getAccountId() {
			return accountId;
		}
		public void setAccountId(long accountId) {
			this.accountId = accountId;
		}
		public double getAmount() {
			return amount;
		}
		public void setAmount(double amount) {
			this.amount = amount;
		}
		public double getInterest() {
			return interest;
		}
		public void setInterest(double interest) {
			this.interest = interest;
		}
		
	}
</pre>
<br />
<div class="addthis_native_toolbox"></div>
<jsp:include page="navigation_link.jsp" />
						</div>
						<jsp:include page="contentBottom.jsp" />
<jsp:include page="suggestionProgramList3.jsp" />
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
