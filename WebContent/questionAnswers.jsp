<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.javadw.model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Java Interview Questions and Answers</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/title_icon.png" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/google-code-prettify/run_prettify.js"></script>
<!-- MailMunch for http://www.javadocworld.com -->
<!-- Paste this code right before the </head> tag on every page of your site. -->
<script src="//s3.amazonaws.com/mailmunch/static/site.js" id="mailmunch-script" data-mailmunch-site-id="202316" async="async"></script>
</head>
<body>
	<div id="container">
		<jsp:include page="header.html" />
		<div id="site-content">
			<div id="content-left">
				<jsp:include page="left_menu.html" />
			</div>
			<div id="content-right">
				<div id="sub-content-left-main">
					<div style="text-align: center;">
						<jsp:include page="top_add.html" />
					</div>
					<div id="interview_qn_ans">
						<div style="margin-left: 15px;">
							<h1>Java Interview Questions and Answers</h1>
							
							<hr class="style-light">
						</div>
						
						<div id="div-question-answer">
							<div id="div-question">Q) What is a class in java?</div>
							<div id="div-answer">A class is nothing but a blueprint or
								a template for creating different objects which defines its
								properties and behaviors</div>
						</div>
						<div id="div-question-answer">
							<div id="div-question">Q) What Is an Object in java?</div>
							<div id="div-answer">An object is an instance of a class
								which has states and behaviors.</div>
						</div>
						<div id="div-question-answer">
							<div id="div-question">Q) What Is an interface in java?</div>
							<div id="div-answer">A Java interface is a bit like a
								class, except a interface can only contain method signatures and
								fields.</div>
						</div>
						<div id="div-question-answer">
							<div id="div-question">Q) What Is an an Abstract class in
								java?</div>
							<div id="div-answer">A class that is declared with abstract
								keyword is known as abstract class. It can have abstract and
								non-abstract methods (concrete methods).</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Are JVM's platform independent?</div>
							<div id="div-answer">No, JVM's are not platform
								independent. JVM's are platform specific run time implementation
								provided by the vendors.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Does Java support multiple
								inheritance?</div>
							<div id="div-answer">No, java doesn't support multiple
								inheritance.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is classloader?</div>
							<div id="div-answer">The classloader is a part of JVM that
								is used to load classes and interfaces.There are many types of
								classloaders, ex:System classloader,Bootstrap classloader,
								Extension classloader etc.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">
								Q) Can I write <span style="font-size: 14px;"> static
									public void main(String args[ ]){ } </span>instead of <span
									style="font-size: 14px;">public static void main(String
									args[ ]){ }</span> ?
							</div>
							<div id="div-answer">Yes, it works fine, it compiles and
								runs without any error/exception.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Can we make a constructor final?
							</div>
							<div id="div-answer">No, constructor can't be final.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What does the the expression
								1.0/0.0 will return, will it throw Exception or Error?</div>
							<div id="div-answer">It will not throw ArithmeticExcpetion
								and return Double.INFINITY</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Why does Java not support
								operator overloading?</div>
							<div id="div-answer">Operator overloading makes the code
								very difficult to read and maintain .So java doesn't support
								operator overloading to maintain code simplicity.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is an abstract method?</div>
							<div id="div-answer">An abstract method is a method
								signature declaration with no body.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is Abstract classes in Java?
							</div>
							<div id="div-answer">Abstract classes are classes that
								contain one or more abstract methods. Abstract classes are
								declared with abstract keyword.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is Java Development Kit
								(JDK) ?</div>
							<div id="div-answer">Java Development Kit (JDK) is a super
								set of the JRE. JDK contains Java Run-time Environment
								(JRE),interpreter(java), a compiler (javac), an archiver (jar),
								a documentation generator (javadoc) and other tools needed in
								Java development.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What are the different type of
								exception in Java ?</div>
							<div id="div-answer">Exceptions are two types i.e. Checked
								Exceptions and Unchecked Exceptions.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) In which scenario finally block
								does not execute ?</div>
							<div id="div-answer">If we calls system.exit method before
								finally block, application exits and finally won't execute.</div>
						</div>

						
						<div id="div-question-answer">
							<div id="div-question">Q) What is a Instance Variable?</div>
							<div id="div-answer">Instance variables are variables
								declared within a class but outside any method. Instance
								variables are used by objects to store their states. These
								variables are instantiated when the class is loaded.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is a Class Variable?</div>
							<div id="div-answer">
								Class variable must have declared with keyword <i>static</i> and
								are with in a class but outside any method.
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What are Wrapper classes in Java?
							</div>
							<div id="div-answer">Integer, Character, Double, Float,
								Long, Boolean, Byte, Short are the eight wrapper classes in
								Java, which are available in side java.lang package. These are
								classes that allow primitive types(int, char, double, float,
								long, boolean, byte, short) to be accessed as objects.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">
								Q) What will happen if you put return statement or <i>System.exit()</i>
								on try or catch block? Will finally block execute?
							</div>
							<div id="div-answer">
								Yes, Finally block will execute even if you put return statement
								in try block or catch block, but the finally block won't run if
								you call <i>System.exit</i> form try or catch.
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Can we override private or static
								method in Java?</div>
							<div id="div-answer">
								We can't override static method in Java, if we create a similar
								method with same return type and same method arguments in child
								class then it will hide the super class method, this is known as
								<b>method hiding</b>.
								<p>Similarly we cannot override private method because it is
									not visible from any other class. We can declared a new method
									for our subclass that has no relation to the super class
									method.</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What does the the expression
								1.0/0.0 will return? Will it throw Exception or Error?</div>
							<div id="div-answer">No, it will not throw
								ArithmeticExcpetion and return Double.INFINITY.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between ArrayList and
								Vector?</div>
							<div id="div-answer">
								<ul>
									<li>When resized ArrayList grows by half of its size but
										Vector grows doubles the size of itself by default.</li>
									<li>ArrayList is non-synchronized while Vector is
										synchronized.</li>
									<li>ArrayList gives better performance than Vector as it
										is non-synchronized.</li>
									<li>Vector use Enumeration and Iterator while ArrayList
										use only Iterator for traversing.</li>
									<li>Vector has setSize() method which can set increment
										size manually, no such method in ArrayList.</li>
								</ul>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between Enumeration
								and Iterator.</div>
							<div id="div-answer">
								<p>Enumeration can be useful if you want to read the list,
									while Iterator can be used for read the list as well as
									manipulate the list. Because Iterator has remove() method.</p>
								<p>
									<b>Enumeration has two methods:</b>
								</p>
								<p>1.hasMoreElement()</p>
								<p>2.nextElement()</p>

								<p>
									<b>Iterator has three methods:</b>
								</p>
								<p>1. hasNext()</p>
								<p>2. next()</p>
								<p>3. remove()</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between arraylist and
								linkedlist in java.</div>
							<div id="div-answer">
								<p>ArrayList is index based, so accessing elements are
									faster as compare to LinkedList because of its get(int index)
									method.</p>
								<p>Addition and deletion with ArrayList is slow as compare
									to LinkedList, because it uses Array internally, so any add or
									delete operation makes all the bits to shifted in memory. While
									LinkedList uses doubly linked list so no bit shifting is
									required in memory.</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) When to use LinkedList and when
								to use ArrayList?</div>
							<div id="div-answer">
								<p>ArrayList gives better performance while searching
									elements because of its get(int index) method, so if the
									requirement is mostly for searching elements than go for
									ArrayList.</p>
								<p>While LinkedList give better performance for addition and
									deletion of elements as compare to ArrayList, because it use
									doubly linked list internally. So if there is a requirement of
									frequent addition and deletion than got for LinkedList.</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between HashMap and
								Hashtable in Java.</div>
							<div id="div-answer">
								<p>
									<b>1.</b> Hashtable is synchronized and thread safe, whereas
									HashMap is not.
								</p>
								<p>
									<b>2.</b> HashMap perform better than Hashtable for
									non-threaded applications.
								</p>
								<p>
									<b>3.</b> HashMap allows one null key and any number of NULL
									values but Hashtable does not allow any null keys or values.
								</p>
								<p>
									<b>4.</b> HashMap object values are iterated by using Iterator
									where as Hashtable uses both Enumerator and Iterator to iterate
									the values.
								</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between Serialization
								and Externalization?</div>
							<div id="div-answer">
								<p>Externalizable interface extends Serializable interface.</p>
								<p>Serializable is an marker interface while Externalizable
									interface we need to implement writeExternal() and
									readExternal() methods of it.</p>
								<p>For Serializable, default serialization process is used,
									while for Externalizable interface provides us complete control
									of serialization process as we can implements writeExternal()
									and readExternal() methods of it.</p>
								<p>While implementing Serializable interface, it is
									recommended to provide a serialVersionUID to avoid class
									version issues when de-serializing objects. With externalizable
									interface, there is no need to worry about serialVersionUID
									because we are expected to provide an implementation of how to
									read and write objects to the stream.
								<p>
								<p>
									<a href="serializationExample.jsp">Serialization Example</a>&nbsp;&nbsp;<a
										href="externalizationExample.jsp">Exterialization Example</a>
								</p>

							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is Aggregation in java?</div>
							<div id="div-answer">
								<p>Aggregation represents a HAS-A relationship between two
									classes,</p>
								<br />
								<p>
									<b>Example:</b>
								</p>
								Let's consider two classes Employee and Address, Employee class
								has an object of Address class. So Employee can use Address
								reference to invoke methods on the Address, and get Address
								behavior.
								<pre>
class Employee{  
   int employeeId;  
   String employeeName;  
   Address address; // Employee has-a address

   //More code....
}  
</pre>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between Thread and
								Process in Java?</div>
							<div id="div-answer">
								<p>
									<b>1. </b>Process has its own memory space while every thread
									has its own stack in Java but it uses process main memory.
								</p>
								<p>
									<b>2. </b>Threads are called lightweight processes.
								</p>
								<p>
									<b>3. </b>Processes are independent of each other while threads
									are interdependent.
								</p>
								<p>
									<b>4. </b>Threads exist within a process, every process has at
									least one thread.
								</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between abstract class
								and interface in Java?</div>
							<div id="div-answer">
								<p>
									<b>1. </b>Abstract class can have abstract and non-abstract
									methods while interface can have only abstract methods.
								</p>
								<p>
									<b>2. </b>The abstract keyword is used to declare abstract
									class, interface keyword is used to declare interface.
								</p>
								<p>
									<b>3. </b>Abstract class doesn't support multiple inheritance
									while interface supports multiple inheritance.
								</p>
								<p>
									<b>4. </b>Abstract class can implements interfaces, while
									interface can't extend an abstract class.
								</p>
								<p>
									<b>5. </b>Abstract class can have constructor, concrete methods
									and static methods while interface can't have constructor,
									concrete methods and static methods.
								</p>
							</div>
						</div>
						<script async
							src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- auto-link -->
						<ins class="adsbygoogle" style="display: block"
							data-ad-client="ca-pub-6274485334555977"
							data-ad-slot="6330265648" data-ad-format="link"></ins>
						<script>
							(adsbygoogle = window.adsbygoogle || []).push({});
						</script>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between synchronized
								HashMap and ConcurrentHashMap in java?</div>
							<div id="div-answer">
								<p>There is no locking at the object level for
									ConcurrentHashMap while SynchronizedHashMap lock the entire map
									object.</p>
								<p>As ConcurrentHashMap will lock only portion of the data
									which are being updated while other portion of data can be
									accessed by other threads. However, SynchronizedHashMap will
									lock all the data while updating, other threads can only access
									the data when the lock is released.</p>
								<p>Every read/write operation needs to acquire lock for
									SynchronizedHashMap but for ConcurrentHashMap reads can happen
									very fast while write is done with a lock.</p>


							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between fail-fast
								Iterator and fail-safe Iterator in Java?</div>
							<div id="div-answer">Fail fast iterator throws
								ConcurrentModificationException if there is any structural
								modification done while iterating it. While fail safe iterator
								doesn't throw ConcurrentModificationException, because it makes
								a copy of the internal data structure (object array) and
								iterates over the copied data structure. So any structural
								modification done to the iterator affects the copied data
								structure.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is Concurrent Modification
								in Java Collection?</div>
							<div id="div-answer">When one or more thread is iterating
								over the collection, in between one thread changes the structure
								of the collection (either adding the element to the collection
								or by deleting the element in the collection or by updating the
								value at particular position in the collection) is known as
								Concurrent Modification.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is
								ConcurrentModificationException?</div>
							<div id="div-answer">
								Java Collection classes are fail-fast which means that if the
								Collection will be changed while some thread is traversing over
								it using iterator, the iterator.next() will throw a <i>java.util.ConcurrentModificationException</i>.
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is race condition in java
								multi threading?</div>
							<div id="div-answer">
								<p>A race condition may occurs when two or more threads can
									monitor the same shared data and they try to change it at the
									same time.</p>
								<p>
									<b>Example:</b>
								</p>
								<pre class="prettyprint" id="div-code">
System.out.println(totalAmount); // prints 1000
if(interestAmount == 10){
   totalAmount += totalAmount*interestAmount/100;   
   // If another thread change the interestAmount to 5 in between. totalAmount will be 1050 
}
System.out.println(totalAmount); //we are expecting totalAmount 1100 here but it prints 1050   
</pre>
								<b>Solution:</b> In order to prevent race conditions from
								occurring, we would typically put a lock around the shared data
								to ensure only one thread can access the data at a time.

								<pre class="prettyprint" id="div-code">
// Obtain lock here for interestAmount
if(interestAmount == 10){
   totalAmount += totalAmount*interestAmount/100;   
}
//Release lock here for interestAmount
</pre>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between Static binding
								and Dynamic binding in java ?</div>
							<div id="div-answer">
								<p>
									<b>1.</b>Static binding in Java occurs during compile time
									while dynamic binding occurs during runtime.
								</p>
								<p>
									<b>2.</b>Static binding uses type(Class) information for
									binding while dynamic binding uses instance of class(Object) to
									resolve calling of method at run-time.
								</p>
								<p>
									<b>3.</b>Overloaded methods are bonded using static binding
									while overridden methods are bonded using dynamic binding at
									runtime.
								</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between stack memory
								and heap memory in Java?</div>
							<div id="div-answer">
								<p>Stack memory is used to store local variables and
									function call, while heap memory is used to store objects in
									Java.</p>
								<p>Heap memory is also called as shared memory as this is
									the place where multiple threads will share the same data,
									while stacks are only visible to the owner Thread.
								<p>
									If there is no memory left in stack for storing function call
									or local variable, JVM will throw <i>java.lang.StackOverFlowError</i>
									while if there is no more heap space for creating object, JVM
									will throw <i>java.lang.OutOfMemoryError</i>.
								</p>
								<br />
								<p>
									<b>Java -Xms&lt;size&gt; </b> // set initial Java heap size
								</p>
								<p>
									<b>Java -Xmx&lt;size&gt; </b> // set maximum Java heap size
								</p>
								<p>
									<b>Java -Xss&lt;size&gt; </b> // set java thread stack size
								</p>

							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between class and
								object?</div>
							<div id="div-answer">Class is blueprint to create objects,
								means you can create different object based on one class which
								varies in there property. e.g. if Car is a class than Mercedes,
								BMW or Audi can be considered as object because they are
								essentially a car but have different size, shape, color and
								feature.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What if we call run() method
								directly instead start() method?</div>
							<div id="div-answer">If you call the run() method directly
								it will run the code on the current thread, not on a new thread.
								Because each thread starts in a separate call stack, which you
								will get after invoking start() method.</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What is deadlock in java?</div>
							<div id="div-answer">
								<p>Deadlock describes a situation where two or more threads
									are blocked forever, waiting for each other. Deadlocks can
									occur in Java because the synchronized keyword causes the
									executing thread to block while waiting for the lock, or
									monitor, associated with the specified object.Since the thread
									might already hold locks associated with other objects, two
									threads could each be waiting for the other to release a lock;
									in such a case, they will end up waiting forever.</p>
								<a href="threadDeadLockExample">Deadlock Example</a>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Difference between extending
								Thread class and implementing Runnable interface?</div>
							<div id="div-answer">
								<p>
									<b>1. Inheritance Option :</b> The limitation with "extends
									Thread" approach is that if you extend Thread, you can not
									extend anything else . Java does not support multiple
									inheritance. In reality , you do not need Thread class
									behaviour , because in order to use a thread you need to
									instantiate one anyway. On the other hand, Implementing the
									Runnable interface gives you the choice to extend any class you
									like , but still define behaviour that will be run by separate
									thread.
								</p>
								<p>
									<b>2. Re-usability : </b> In "implements Runnable" , we are
									creating a different Runnable class for a specific behaviour
									job (if the work you want to be done is job). It gives us the
									freedom to reuse the specific behaviour job whenever required.
									"extends Thread" contains both thread and job specific
									behaviour code. Hence once thread completes execution , it can
									not be restart again.
								</p>
								<p>
									<b>3. Object Oriented Design :</b> Implementing Runnable should
									be preferred . It does not specializing or modifying the thread
									behaviour . You are giving thread something to run. We conclude
									that Composition is the better way. Composition means two
									objects A and B satisfies has-a relationship. "extends Thread"
									is not a good Object Oriented practice.
								</p>
								<p>
									<b>4. Loosely-coupled :</b> "implements Runnable" makes the
									code loosely-coupled and easier to read . Because the code is
									split into two classes . Thread class for the thread specific
									code and your Runnable implementation class for your job that
									should be run by a thread code. "extends Thread" makes the code
									tightly coupled . Single class contains the thread code as well
									as the job that needs to be done by the thread.
								</p>
								<p>
									<b>5. Functions overhead :</b> "extends Thread" means
									inheriting all the functions of the Thread class which we may
									do not need . job can be done easily by Runnable without the
									Thread class functions overhead.
								</p>
							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) What's the difference between
								StackOverflowError and OutOfMemoryError?</div>
							<div id="div-answer">
								<p>When you start JVM you define how much RAM it can use use
									for processing. JVM divides this into certain memory locations
									for its processing purpose, two of those are Stack & Heap.
									OutOfMemoryError is related to Heap, while StackOverflowError
									is related to Stack.</p>
								<p>If there is no more heap space for creating object, JVM
									will throw java.lang.OutOfMemoryError, while if there is no
									memory left in stack for storing function call or local
									variable, JVM will throw java.lang.StackOverFlowError.</p>

							</div>
						</div>

						<div id="div-question-answer">
							<div id="div-question">Q) Class level locking vs Object
								level locking</div>
							<div id="div-answer">
								<p>Class level locking prevents multiple threads to enter in
									synchronized block in any of all available instances on
									runtime. This means if in runtime there are 100 instances of a
									class then only one thread will be able to execute it in any
									one of instance at a time, and all other instances will be
									locked for other threads.</p>
								<p>Object level locking is mechanism when you want to
									synchronize a non-static method or non-static code block such
									that only one thread will be able to execute the code block on
									given instance of the class.</p>

							</div>
						</div>
						<div id="div-question-answer">
							<div id="div-question">
								Q) What is the best approach to store password in Java?
								<hr />
							</div>
							<div id="div-answer">
								Both char array or String can be used to store text,But char
								array is preferred over String.
								<h4>Here is why:</h4>
								1. Strings are immutable in Java so if you store password as
								plain text it will be available in memory until Garbage
								collector clears it and since String uses String pool for
								reusability so there is high risk of your text data remaining in
								memory for long duration. Access to memory dump can disclose the
								password in clear text and now we got one reason to have the
								passwords in encrypted form.<br /> 2. String literals or String
								objects created by using new String("") can be shown directly as
								plain text on console. But char array can display only unsigned
								hexadecimal representation of the hash code of the array
								reference.e.g:- [I@1db9742

							</div>
						</div>
						<br />
						<hr class="style-dark-light">
						<div class="addthis_native_toolbox"></div>
						<hr class="style-dark-light">
<jsp:include page="contentBottom.jsp" />
						<!--<c:forEach items="${questionAnswers}" var="qa">
							<div id="div-question-answer">
								<div id="div-question">
									Q)
									<c:out value="${qa.question}" escapeXml="false" />
								</div>
								<div id="div-answer">
									<c:out value="${qa.answer}" escapeXml="false" />
								</div>
							</div>
						</c:forEach>-->

						<br />
<br />
						<br />
						<div style="padding: 10px;">
							<div id="disqus_thread"></div>
							<script>
								/**
								 * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
								 * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
								 */

								var disqus_config = function() {
									this.page.url = "http://www.javadocworld.com/questionAnswers"; // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = "questionAnswers"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
								};
								(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d
											.createElement('script');

									s.src = '//javadocworld.disqus.com/embed.js';

									s.setAttribute('data-timestamp',
											+new Date());
									(d.head || d.body).appendChild(s);
								})();
							</script>

						</div>
					</div>
					</div>
				</div>

				<div id="sub-content-right-main">
					<jsp:include page="contentRightMain.jsp" />
				</div>
			</div>
		</div>
		<jsp:include page="footer.html" />
	</div>
</body>
</html>
