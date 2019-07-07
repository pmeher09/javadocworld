<!DOCTYPE html>
<html>
<head>
<title>TODO Example in Java</title>
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
						<h1> TODO </h1></div>
<pre class="prettyprint" id="div-code">
HashMap
DEFAULT_INITIAL_CAPACITY = 16; ( MUST be a power of two)
DEFAULT_LOAD_FACTOR = 0.75f
 (ad factor means whenever the size of the hashmap reaches to 
 75% of its current size, i.e, 12, it will double its size by 
 recomputing the hashcodes of existing data structure elements)
 
 What is race condition with respect to hashmaps?
 

HashMap 
-------------
MashMap works On principle of Hashing.

Hashing?
Hashing in its simplest form, is a way to assigning a unique 
code for any variable/object after applying any formula/algorithm 
on its properties. 


protected transient HashEntry[] data; 

class HashEntry implements Map.Entry, KeyValue {

		protected HashEntry next;
		
        /** The hash code of the key */
        protected int hashCode;
		
        protected Object key;
		
        /** The value */
        protected Object value;
		----s
}

public Object put(Object key, Object value) {
	create a new HashEntry object HashEntry(next, hashCode, 
	   key, value) and add it to the HashEntry[] array
	
}

LinkedList
---------------
	
	private static class Node&lt;E&gt; {
        E item;
        Node&lt;E&gt; next;
        Node&lt;E&gt; prev;

        Node(Node&lt;E&gt; prev, E element, Node&lt;E&gt; next) {
            this.item = element;
            this.next = next;
            this.prev = prev;
        }
    }
	public boolean add(E e) {
        linkLast(e);
        return true;
    }

	
	void linkLast(E e) {
        final Node&lt;E&gt; l = last;
        final Node&lt;E&gt; newNode = new Node&lt;&gt;(l, e, null);
        last = newNode;
        if (l == null)
            first = newNode;
        else
            l.next = newNode;
        size++;
        modCount++;
    }
	
	
	--------------------
DAO Design Pattern
---------------
DAO (Data Access Object)  design pattern is a popular design 
pattern to implement persistence layer of Java application.

By using DAO design pattern we can make View Layer completely 
independent to DAO layer and only Service layer has dependency 
on it but it is also abstracted by using DAO interface.

How we implement it?

DAO Interface : This interface defines the standard operations to 
be performed on a model object(s).

DAO Class which implements DAO Interface : This class implements above 
interface and has the implementation of all interface methods,  responsible 
to get data from database.

Model Object : These are simple POGO classes having setter/getter methods, 
data retrieved from database are stored in this model using DAO class.

View - Service - DAO - JDBC(DataBase)

Advantages:
Keep persistence logic in a separate layer called Data Access Layer, 
so any change/update in persistence mechanism keep other layer safe. 
JUNIT can be used to test the DAO layer independently using mock data. 
As all implementation code are encapsulated in side DAO class and other 
layer use DAO interface to get the data, so underlying persistence 
mechanism not leak out of the DAO layer.  


Example:

	// Create Data Access Object Interface
	public interface BankAccountDAO{
		   public boolean deposite(Account account);
		   public boolean withdraw(Account account);

	}
	
	
	//Create concrete class implementing above interface
		public class BankAccountDAOImpl implements BankAccountDAO{
		public boolean deposite(Account account){
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
----------------------------
Factory Method Design Pattern
	
	
	
Singleton Design Pattern:
------------------------
Singleton is a class which has only one instance in whole application, 
it provides a public static method getInstance() to access the instance.
There are many classes in JDK which is implemented using Singleton pattern 
like java.lang.Runtime, java.awt.Desktop, java.awt.Toolkit  etc.

Steps:
1. Create a private constructor to restrict instantiation of the class 
from other classes.
2. Create one private static instance of the class.
3. Create one public static method that returns the instance of the class.

 
extending Thread VS implementing Runnable Difference :
-----------------------------------------------------

1. Inheritance Option:   The limitation with "extends Thread" 
approach is that if you extend Thread,  you can not extend 
anything else . Java does not support multiple inheritance.  
In reality , you do not need Thread class behaviour , because 
in order to use a thread you need to instantiate one anyway.
On the other hand,
Implementing the Runnable interface gives you the choice to extend 
any class you like , but still define behaviour that will be run 
by separate thread.

2. Re-usability :  In "implements Runnable" , we are creating a 
different Runnable class for a specific behaviour  job (if the work 
you want to be done is job). It gives us the freedom to reuse the 
specific behaviour job whenever required.
"extends Thread"  contains both thread and job specific behaviour code. 
Hence once thread completes execution , it can not be restart again.   

3. Object Oriented Design:  Implementing Runnable should be preferred . 
It does not specializing or modifying the thread behaviour . 
You are giving thread something to run. We conclude that Composition 
is the better way. Composition means two objects A and B satisfies has-a  
relationship.
"extends Thread"  is not a good Object Oriented practice.

4. Loosely-coupled : "implements Runnable" makes the code loosely-coupled 
and easier to read .
Because the code is split into two classes . Thread class for the thread 
specific code and your Runnable implementation class for your job that 
should be run by a thread code.
"extends Thread"  makes the code tightly coupled . Single class contains 
the thread code as well as the job that needs to be done by the thread.

5. Functions overhead :  "extends Thread"  means inheriting all the functions 
of the Thread class which we may do not need .  job can be done easily by 
Runnable without the Thread class functions overhead.
	
	
	
	
	
	


public class ThreadEvenOddNumberExample {

	public static void main(String[] args) {
		int maxNumber = 10;

		NumberPrinter printer = new NumberPrinter();
		new Thread(new EvenNumGenerator(printer, maxNumber)).start();
		new Thread(new OddNumGenerator(printer, maxNumber)).start();
	}
}

class NumberPrinter {

	// To check if even number is printed or not.
	private boolean isEvenNumPrinted = true;

	public void printOdd(int number) throws InterruptedException {
		// Get a lock on NumberPrinter
		synchronized (this) {

			// Wait until even is not printed.
			if (!isEvenNumPrinted)
				wait();

			System.out.println(number);

			isEvenNumPrinted = false;

			// Notify the other waiting thread which is waiting on
			// NumberPrinter
			// Other thread will get out of waiting state
			notify();
		}
	}

	public void printEven(int number) throws InterruptedException {
		synchronized (this) {
			if (isEvenNumPrinted)
				wait();

			System.out.println(number);
			isEvenNumPrinted = true;
			notify();
		}
	}
}

class OddNumGenerator implements Runnable {
	private NumberPrinter q;
	private int max;

	public OddNumGenerator(NumberPrinter q, int max) {
		this.q = q;
		this.max = max;
	}

	@Override
	public void run() {
		for (int i = 1; i &lt; max; i = i + 2) {
			try {
				q.printOdd(i);
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}
}

class EvenNumGenerator implements Runnable {
	private NumberPrinter printer;
	private int max;

	public EvenNumGenerator(NumberPrinter printer, int max) {
		this.printer = printer;
		this.max = max;
	}

	@Override
	public void run() {
		for (int i = 2; i &lt;= max; i = i + 2) {
			try {
				printer.printEven(i);
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}
}
	
Output
--------
1
2
3
4
5
6
7
8
9
10

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
