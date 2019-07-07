<!DOCTYPE html>
<html>
<head>
<title>Spring Example in Java</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Java Example" />
<meta name="keywords"
	content="">
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
						<br />
						<div id="code-question">
						<h1>Spring  Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
web.xml
-----------
  &lt;listener&gt;
      &lt;listener-class&gt;
         org.springframework.web.context.ContextLoaderListener
      &lt;/listener-class&gt;
   &lt;/listener&gt;
   
IOC or dependency injection minimizes the amount of code in an application. It makes 
easy to test applications

When writing a complex Java application, application classes should be as independent 
as possible of other Java classes to increase the possibility to reuse these classes 
and to test them independently of other classes while doing unit testing.

public class TextEditor {
   private SpellChecker spellChecker;
   
   public TextEditor() {
      spellChecker = new SpellChecker();
   }
}

public class TextEditor {
   private SpellChecker spellChecker;
   
   public TextEditor(SpellChecker spellChecker) {
      this.spellChecker = spellChecker;
   }
}


This Spring interview question is first step towards Spring framework and many interviewer
starts Spring interview from this question. As the name implies Inversion of control means
now we have inverted the control of creating the object from our own using new operator to 
container or framework. Now its the responsibility of container to create object as required. 
We maintain one xml file where we configure our components, services, all the classes and 
their property. We just need to mention which service is needed by which component and container 
will create the object for us. This concept is known as dependency injection because all object 
dependency (resources) is injected into it by framework

1	Constructor-based dependency injection
Constructor-based DI is accomplished when the container invokes a class constructor with a number 
of arguments, each representing a dependency on other class.

2	Setter-based dependency injection
Setter-based DI is accomplished by the container calling setter methods on your beans after 
invoking a no-argument constructor or no-argument static factory method to instantiate your bean.


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {
   public static void main(String[] args) {
      ApplicationContext context = 
             new ClassPathXmlApplicationContext("Beans.xml");

      HelloWorld obj = (HelloWorld) context.getBean("helloWorld");

      obj.getMessage();
   }
}

&lt;beans xmlns="http://www.springframework.org/schema/beans"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.springframework.org/schema/beans
    http://www.springframework.org/schema/beans/spring-beans-3.0.xsd"&gt;

   &lt;bean id="helloWorld" class="com.tutorialspoint.HelloWorld"&gt;
       &lt;property name="message" value="Hello World!"/&gt;
   &lt;/bean&gt;

   	&lt;!--Setter-based dependency injection --&gt;
   &lt;bean id="textEditor" class="com.tutorialspoint.TextEditor"&gt;
      &lt;property name="spellChecker" ref="spellChecker"/&gt;
   &lt;/bean&gt;
   
	&lt;!--Constructor-based dependency injection --&gt;
   &lt;bean id="textEditor" class="com.tutorialspoint.TextEditor"&gt;
      &lt;constructor-arg ref="spellChecker"/&gt;
   &lt;/bean&gt;

   &lt;!-- Definition for spellChecker bean --&gt;
   &lt;bean id="spellChecker" class="com.tutorialspoint.SpellChecker"&gt;
   &lt;/bean&gt;
&lt;/beans&gt;




In spring framework bean declared in ApplicationContext.xml can reside in five scopes:

1) Singleton (default scope) :  the bean definition to a single instance per 
Spring IoC container.
2) prototype : a single bean definition has any number of object instances.
3) request :  bean is defined to an HTTP request. This scope is valid only in a 
web-aware Spring ApplicationContext.
4) session :  bean definition is scoped to an HTTP session. This scope is also valid 
only in a web-aware Spring ApplicationContext.
5) global-session : bean definition is scoped to a global HTTP session. This is also a
 case used in a web-aware Spring ApplicationContext.

ApplicationContext vs BeanFactory
---------------------------------
Spring provides two kinds of IOC container, one is BeanFactory and other is 
ApplicationContext
In short BeanFactory provides basic IOC and DI features while ApplicationContext 
provides advanced features.

ApplicationContext--Support Annotation based dependency Injection.-@Autowired, @PreDestroy 
BeanFactory-Does not support the Annotation based dependency 
Injection.(you need to register AutoWiredBeanPostProcessor)

ApplicationContext- Application contexts can publish events to beans that are registered
 as listeners
BeanFactory-Does not Support

ApplicationContext-Support internationalization (I18N) messages.
BeanFactory-Does not support way to access Message Bundle(internationalization (I18N) 

ApplicationContext-Support  many enterprise services such JNDI access, EJB integration, 
remoting.
BeanFactory-Doesn't support.

ApplicationContext-- its By default support Aggresive loading
BeanFactory-By default its support Lazy loading

ApplicationContext--Here we can have more than one config files possible
BeanFactory-In this only one config file or .xml file

ApplicationContext--Support application life-cycle events, and validation.
BeanFactory-Doesn't support.

In summary BeanFactory is OK for testing and non production use but ApplicationContext is
 more feature rich container implementation and should be favoured over BeanFactory

Collection Injection
--------------------

Map
-------
 &lt;property name="addressMap"&gt;
         &lt;map&gt;
            &lt;entry key="one" value="INDIA"/&gt;
            &lt;entry key ="two" value-ref="address1"/&gt;
            &lt;entry key ="three" value-ref="address2"/&gt;
         &lt;/map&gt;
 &lt;/property&gt;
	
List
--------
 &lt;property name="addressList"&gt;
         &lt;list&gt;
            &lt;value&gt;INDIA&lt;/value&gt;
            &lt;value&gt;Pakistan&lt;/value&gt;
            &lt;value&gt;USA&lt;/value&gt;
            &lt;value&gt;USA&lt;/value&gt;
         &lt;/list&gt;
 &lt;/property&gt;	
 
 &lt;!-- java.util.List --&gt;
 &lt;property name="lists"&gt;
		&lt;list&gt;
				&lt;value&gt;1&lt;/value&gt;
				&lt;ref bean="PersonBean" /&gt;
				&lt;bean class="com.mkyong.common.Person"&gt;
					&lt;property name="name" value="mkyongList" /&gt;
					&lt;property name="address" value="address" /&gt;
					&lt;property name="age" value="28" /&gt;
				&lt;/bean&gt;
		&lt;/list&gt;

Question Answers
-------------		
Are Singleton beans thread safe ? 
No
What would happen if we have a prototype bean injected into a singleton bean ? 
How many objects of prototype bean object will be created ? 
When a singleton bean is created , a single instance of the prototype bean 
objecte is created. It won't create a new prototype bean.
</pre>
						</div>
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
