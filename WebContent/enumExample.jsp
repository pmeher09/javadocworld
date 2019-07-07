<!DOCTYPE html>
<html>
<head>
<title>Enum Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content=" EnumJava Example" />
<meta name="keywords"
	content="Enum">
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
						<h1> Enum Example in Java</h1></div><div id="code-answer">
						<p>An enum type is a special data type that enables for a variable to be a set of predefined constants.</p>

<p>You can define an enum type by using the enum keyword.
For example:</p>
<pre class="prettyprint" id="div-code">
public enum Direction {
    NORTH,
	EAST, 
	SOUTH, 
	WEST    //optionally can end with ";"
}
</pre>
<p>We can access the enum constant like this:</p>
<pre class="prettyprint" id="div-code">Direction direction = Direction.NORTH;</pre>
<br />
<p>
<b>Enum declaration inside a class:</b></p>
<pre class="prettyprint" id="div-code">public class DirectionClass
 {
     enum Direction
     {
         EAST,
         WEST,
         NORTH,
         SOUTH
     }
 }</pre>
 <br />
 We can access a direction using DirectionClass.Direction.EAST.
<br /><br /><br />
<b>enum constructors :</b>
<br />
We can define our own constructors to initialize the state of enum types.
<pre class="prettyprint" id="div-code">public enum Direction {
	// Enum types
	EAST(0), WEST(180), NORTH(90), SOUTH(270);

	// Constructor
	private Direction(final int value) {
		this.value = value;
	}

	// Internal state
	private int value;

	public int getValue() {
		return value;
	}
}</pre>
<br /><br />
<b>extending enums:</b><br />
Enum types are final by design and Java enums extend the abstract class java.lang.Enum  implicitly,  so we can't extend another class from our enum type.
<br /><br />
<b>implements enums:</b><br />
We can implement Interfaces with Enums in Java.
<pre class="prettyprint" id="div-code">
interface TestInterface {
	public String testMethod();
}

public enum Direction implements TestInterface{
	// Enum types
	EAST(0), WEST(180), NORTH(90), SOUTH(270);

	// Constructor
	private Direction(final int value) {
		this.value = value;
	}

	// Internal state
	private int value;

	public int getValue() {
		return value;
	}

	@Override
	public String testMethod() {
		return "testing"+value;
	}
}
</pre>
<br /><br />
Enum is basically a special class type, and can have constructor, methods and fields just like any other class.<br />
We can print the direction by defining a abstract direction method, also we can overwrite toString method.
<pre class="prettyprint" id="div-code">public enum Direction {
	// Enum types
	EAST(0) {
		@Override
		void printDirection() {
			System.out.println("Direction is EAST");
		}
	},
	WEST(180) {
		@Override
		void printDirection() {
			System.out.println("Direction is WEST");
		}
	},
	NORTH(90) {
		@Override
		void printDirection() {
			System.out.println("Direction is NORTH");
		}
	},
	SOUTH(270) {
		@Override
		void printDirection() {
			System.out.println("Direction is SOUTH");
		}
	};

	// Constructor
	private Direction(final int value) {
		this.value = value;
	}

	// Internal state
	private int value;

	public int getValue() {
		return value;
	}

	@Override
	public String toString() {
		switch (this) {
		case EAST:
			return "EAST - " + value;
		case WEST:
			return "WEST" + value;
		case NORTH:
			return "NORTH" + value;
		case SOUTH:
			return "SOUTH" + value;

		default:
			return null;

		}

	}

	abstract void printDirection();
}</pre></div>
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
