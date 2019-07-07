<!DOCTYPE html>
<html>
<head>
<title>Factory Design Pattern Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Factory Design Pattern Java Example" />
<meta name="keywords"
	content="Factory Design Pattern">
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
						<h1>Factory Design Pattern Example in Java</h1></div>
						<div id="code-answer">
						<p>In Factory pattern, we create object without exposing the creation logic to the client and refer to newly created object using a common interface.
						</p>
						</div>
<pre class="prettyprint" id="div-code">
interface Currency {
	String getCurrencySign();
}

// Concrete class Rupee code here
class Rupee implements Currency {
	@Override
	public String getCurrencySign() {
		return "RS";
	}
}

// Concrete class US Dollar code here
class USDollar implements Currency {
	@Override
	public String getCurrencySign() {
		return "USD";
	}
}

// Concrete class BritishPound Code here
class BritishPound implements Currency {
	@Override
	public String getCurrencySign() {
		return "GBP";
	}
}

// Factroy Class code here
class CurrencyFactory {

	public static Currency createCurrency(String country) {
		if (country.equalsIgnoreCase("India")) {
			return new Rupee();
		} else if (country.equalsIgnoreCase("UK")) {
			return new BritishPound();
		} else if (country.equalsIgnoreCase("US")) {
			return new USDollar();
		}
		return null;
	}
}

// A Client program to demonstrate CurrencyFactory
public class FactoryDesignPatternExample {
	public static void main(String args[]) {

		Currency rupee = CurrencyFactory.createCurrency("India");
		System.out.println("Currency for India : " + rupee.getCurrencySign());

		rupee = CurrencyFactory.createCurrency("UK");
		System.out.println("Currency for UK : " + rupee.getCurrencySign());

	}
}
</pre>
<div id="div-code-output"><b>Output</b><hr>Currency for India : RS
Currency for UK : GBP</div>
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
