<!DOCTYPE html>
<html>
<head>
<title>Hibernate Example in Java</title>
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
						<h1>Hibernate  Example in Java</h1></div>
<pre class="prettyprint" id="div-code">
What is SessionFactory and why we have one SessionFactory per application?
SessionFactory is an interface which is thread-safe and singleton.
Session factory objects are to be implemented using the singleton design pattern. 
Instances of SessionFactory are thread-safe and typically shared throughout an 
application. As these objects are heavy weight because they contains the connection 
information, hibernate configuration information and mapping files,location path. So 
creating number of instances will make our application heavy weight. But the session 
objects are not thread safe. So in short it is - SessionFactory objects are one per 
application and Session objects are one per client.

Hence it would be one SessionFactory per DataSource


Caching:
-------------
Caching is all about application performance optimization and it sits between your 
application and the database to avoid the number of database hits as many as possible 
to give a better performance for performance.

First-level cache:
The first-level cache is the Session cache and is a mandatory cache through which all 
requests must pass. 
First level cache is associated with "session" object and other session objects in 
application can not see it.
The scope of cache objects is of session. Once session is closed, cached objects are 
gone forever.
First level cache is enabled by default and you can not disable it.
When we query an entity first time, it is retrieved from database and stored in first 
level cache associated with hibernate session.
If we query same object again with same session object, it will be loaded from cache 
and no sql query will be executed.
The loaded entity can be removed from session using evict() method. The next loading 
of this entity will again make a database call if it has been removed using evict() 
method.
The whole session cache can be removed using clear() method. It will remove all the 
entities stored in cache.

Second-level cache:
Whenever hibernate session try to load an entity, the very first place it look for cached 
copy of entity in first level cache (associated with particular hibernate session).
If cached copy of entity is present in first level cache, it is returned as result of load 
method.
If there is no cached entity in first level cache, then second level cache is looked up for 
cached entity.
If second level cache has cached entity, it is returned as result of load method. But, before 
returning the entity, it is stored in first level cache also so that next invocation to load 
method for entity will return the entity from first level cache itself, and there will not be 
need to go to second level cache again.
If entity is not found in first level cache and second level cache also, then database query 
is executed and entity is stored in both cache levels, before returning as response of 
load() method.


get vs load :
----------------
When you call session.get() method, it will hit the database immediately and returns the original 
object. If the row is not available in the database, it returns null.
When you call session.load() method, it will not hit the database directly. it look into the session 
and if the object is not there in the session then only it hits the database.

close vs evict vs clear
----------------------
close() : Close the session by calling session.close() after transaction is completed. All the 
associated objects will be dissociated after calling session.closeIt is not mandatory to close 
the session but it is good to disconnect the connection ,close() method is used when you are 
going to close your JDBC connection. This method ends your session by releasing the connection 
and cleaning up.

evict():  Removes the object from the session. This method is used to dissociate/disconnect the 
specified object from the session.

clear():  Completely clear the session and is used to dissociate/disconnect all the objects from 
the session. This method completely clear the session. It evicts all loaded objects and cancel 
all pending operations and clear caches for all objects.

flush vs commit
------------------
flush(): Forces the session to flush. It is used to synchronize session data with database.

public void flush() throws HibernateException
 
When you call session.flush(), the statements are executed in database but it will not committed.
If you dont call session.flush() and if you call session.commit() , internally commit() method 
executes the statement and commits.
So commit()= flush+commit.

Consider a requirement when you want to insert a large number of records in database using Hibernate. 
The code looks like as below.

Session session = SessionFactory.openSession();
Transaction tx = session.beginTransaction();
for ( int i=0; i&lt;100000; i++ ) {
    Employee emp = new Employee(.....);
    session.save(emp);
}
tx.commit();
session.close();
 
This code may throw OutOfMemoryError somewhere around 50,000th row. Because Hibernate caches all 
the newly inserted Employee objects in  the session level cache. We can solve this problem using 
hibernate batch processing.

We need to set hibernate.jdbc.batch_size in hibernate.cfg.xml as below

&lt;property name="hibernate.jdbc.batch_size"&gt;40&lt;/property&gt;
 
So, Hibernate executes every 40 rows as a batch.

And the above code has to be changed to :

Session session = SessionFactory.openSession();
Transaction tx = session.beginTransaction();
for ( int i=0; i&lt;100000; i++ ) {
    Employee emp = new Employee(.....);
    session.save(emp);
	if( i % 40 == 0 ) { // Same as the JDBC batch size
        //flush a batch of inserts and release memory:
        session.flush();
        session.clear();
    }
}
tx.commit();
session.close();

Batch processing helps to avoid OutOfMemoryError


openSession vs getCurrentSession
---------------------------------
1. openSession():
It will return a new session object on every call
We can use this method when we decided to manage the Session our self.
It does not try to store or pull the session from the current context.
If we use this method, we need to flush() and close() the session. It does not flush 
and close() automatically.
We should open a new session for each request in multi-threaded environment. For web 
application frameworks, we can choose to open a new session for each request or for 
each session based on the requirement.

2. getCurrentSession():
Obtains the current session. The "current session" refers to a Hibernate Session bound 
by Hibernate behind the scenes, to the transaction scope.
A session is opened whenever getCurrentSession() is called for the first time and closed 
when the transaction ends. This creates a brand new session if one does not exist or uses 
an existing one if one already exists. It automatically configured with both auto-flush 
and auto-close attributes as true means Session will be automatically flushed and closed.
We can use getCurrentSession() method when our transaction runs long time. To use this 
method we need to configure one property in hibernate.cfg.xml file. 
The property is :
&lt;property name="hibernate.current_session_context_class"&gt;thread&lt;/property&gt;
Hibernate Session objects are not thread safe, so we should not use it in multi-threaded 
environment. We can use it in single threaded environment because its relatively faster 
than opening a new session.

update vs merge
---------------
http://www.java4s.com/hibernate/difference-between-merge-and-update-methods-in-hibernate/

Both update() and merge() methods in hibernate are used to convert the object which is in 
detached state into persistence state.  But there is little difference.  Let us see which 
method will be used in what situation.
Let Us Take An Example

SessionFactory factory = cfg.buildSessionFactory();
Session session1 = factory.openSession();

Student s1 = null;  // line 6
Object o = session1.get(Student.class, new Integer(101));
s1 = (Student)o;
session1.close();// line 9
 
s1.setMarks(97); // line 11

Session session2 = factory.openSession(); // line 13
Student s2 = null;
Object o1 = session2.get(Student.class, new Integer(101));
s2 = (Student)o1;
Transaction tx=session2.beginTransaction();

session2.merge(s1);

Explanation:
See from line numbers 6 - 9, we just loaded one object s1 into session1 cache and closed 
session1 at line number 9, so now object s1 in the session1 cache will be destroyed as 
session1 cache will expires when ever we say session1.close()
Now s1 object will be in some RAM location, not in the session1 cache
here s1 is in detached state, and at line number 11 we modified that detached object s1, 
now if we call update() method then hibernate will throws an error, because we can update 
the object in the session only
So we opened another session [session2] at line number 13,  and again loaded the same 
student object from the database, but with name s2
so in this session2, we called session2.merge(s1); now into s2 object s1 changes will 
be merged and saved into the database
Hope you are clear, actually update and merge methods will come into picture when ever 
we loaded the same object again and again into the database, like above.


hibernate pogo object states:
----------------------------
Transient:
One newly created object,with out having any relation with the database, means never 
persistent, not associated with any Session object

Persistent:
Having the relation with the database, associated with a unique Session object

Detached:
previously having relation with the database [persistent ], now not associated with 
any Session
see the next sessions for the better understanding of the life cycle states of pojo 
class object(s) the hibernate

public class ClientProgram { 

	public static void main(String[] args)
	{

		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml"); 

		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();

         // Transient state_____start
		Product p=new Product();
		p.setProductId(101);
		p.setProName("iPhone");
		p.setPrice(25000);
         // Transient state_____end

         // Persistent state_____start
		Transaction tx = session.beginTransaction();
		session.save(p);
		System.out.println("Object saved successfully.....!!");
		tx.commit();
         // Persistent state_____end  

		session.close();
		factory.close();
	}

}
public class ClientLogicProgram {

    public static void main(String... args)
    {

        Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");

        SessionFactory factory = cfg.buildSessionFactory();

        Session session1 = factory.openSession();

         Product p=null;          //Transient state..
         Object o=session1.get(Product.class, new Integer(1001));
         p=(Product)o;           //now p is in Persistent state..

        session1.close();

        p.setPrice(36000);            // p is in Detached state

        Session session2=factory.openSession();

         Transaction tx=session2.beginTransaction();
            session2.update(p);      // now p reached to Persistent state
         tx.commit();

        session2.close();

        factory.close();
}
}

lazy vs eager
----------------
Eager Initialization Lazy Initialization
To increase the performance while retrieving records from a database table, Hibernate 
uses two styles - Eager Initialization and Lazy Initialization. Concept-wise, a good 
programming practice is lazy initialization; but both have their own importance in coding.

Lazy initialization (or instantiation)

There are two types of initializations in a programming language - eager initialization 
and lazy initialization. In eager initialization, the object is created in the program 
execution, in a normal way, which sometimes the programmer may not use it in the program. 
This looks waste of memory and processor time. Other way is to create the object when the 
programmer really requires. This is called lazy initialization (one of the design patterns). 
That is, if the object is created at runtime, only when the programmer requires is known 
as lazy initialization. So, which is preferred, definitely you say lazy initialization. 
Lazy initialization is basically meant for improving the performance by avoiding unnecessary 
computation (load on the microprocessor) and reducing memory requirements.

Some examples:
 
1. Suppose you have Customer object having a big array of orders to display. To display the 
list to the customer it is very expensive as it requires lot of hits to database. It the 
Customer object is initialized at the beginning of the program which later found that Customer 
never asks to display his orders. Now, as you can guess, it is the time for lazy initialization.

2. Another scenario is when an object is very expensive (takes long time to create) to create, 
if you would like to defer (delay) its creation due to other more expensive operations takes 
place. Say, your program creates many object instances when it starts, but a few are required 
immediately. Now lazy initialization is the time to think to increase the startup performance 
of the program by delaying the initialization after the required and preferred objects have 
been created. Let us take a small code:


public class Demo
{
  private Player newPlayer = new Player();         // object is created well in advance
      
  public Player getPlayer()
  {
    return newPlayer;
  }
  public static void main(String args[])
  {
    Demo d1 = new Demo();
    Player p1 = d1.getPlayer();
  }
}

When you see this above code, after knowing what is lazy initialization, definitely you say 
it is meaningless, as the newPlayer object is created at the startup of the program itself 
which may not be required later (wasting its creation time).

The above code is modified as follows for lazy initialization.

public class Demo
{
  private Player newPlayer;
      
  public Player getPlayer()
  {
    if(newPlayer == null)
    {
      newPlayer = new Player();          // object is created when asked
    }
    return newPlayer;
  }
  public static void main(String args[])
  {
    Demo d1 = new Demo();
    Player p1 = d1.getPlayer();
  }
}

In the above code, the creation of newPlayer object is delayed making sure we do not create 
it until it is required.




Fetching Strategies
----------------------
http://www.mkyong.com/hibernate/hibernate-fetching-strategies-examples/

There are four fetching strategies

1. fetch-'join' = Disable the lazy loading, always load all the collections and entities.
2. fetch-'select' (default) = Lazy load all the collections and entities.
3. batch-size='N' = Fetching up to 'N' collections or entities, *Not record*.
4. fetch-'subselect' = Group its collection into a sub select statement.

...
@Entity
@Table(name = "stock", catalog = "mkyong")
public class Stock implements Serializable{
...
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stock")
	@Cascade(CascadeType.ALL)
	@Fetch(FetchMode.SELECT)
        @BatchSize(size = 10)
	public Set&lt;StockDailyRecord&gt; getStockDailyRecords() {
		return this.stockDailyRecords;
	}
...
}








Hibernate Example:
------------------
import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.cfg.Configuration;  
  
public class StoreData {  
public static void main(String[] args) {  
      
    //creating configuration object  
    Configuration cfg=new Configuration();  
    cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
      
    //creating seession factory object  
    SessionFactory factory=cfg.buildSessionFactory();  
      
    //creating session object  
    Session session=factory.openSession();  
      
    //creating transaction object  
    Transaction t=session.beginTransaction();  
          
    Employee e1=new Employee();  
    e1.setId(115);  
    e1.setFirstName("sonoo");  
    e1.setLastName("jaiswal");  
      
    session.persist(e1);//persisting the object  
      
    t.commit();//transaction is committed  
    session.close();  
      
    System.out.println("successfully saved");  
      
}  
}  

employee.hbm.xml
------------------------
&lt;?xml version='1.0' encoding='UTF-8'?&gt;  
&lt;!DOCTYPE hibernate-mapping PUBLIC  
 "-//Hibernate/Hibernate Mapping DTD 3.0//EN"  
 "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd"&gt;  
  
 &lt;hibernate-mapping&gt;  
  &lt;class name="com.javatpoint.mypackage.Employee" table="emp1000"&gt;  
    &lt;id name="id"&gt;  
     &lt;generator class="assigned"&gt;&lt;/generator&gt;  
    &lt;/id&gt;  
            
    &lt;property name="firstName"&gt;&lt;/property&gt;  
    &lt;property name="lastName"&gt;&lt;/property&gt;  
            
  &lt;/class&gt;  
            
 &lt;/hibernate-mapping&gt;  
 
 
 
hibernate.cfg.xml
------------------------
&lt;?xml version='1.0' encoding='UTF-8'?&gt;  
&lt;!DOCTYPE hibernate-configuration PUBLIC  
          "-//Hibernate/Hibernate Configuration DTD 3.0//EN"  
          "http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd"&gt;  
  
&lt;hibernate-configuration&gt;  
  
    &lt;session-factory&gt;  
        &lt;property name="hbm2ddl.auto"&gt;update&lt;/property&gt;  
        &lt;property name="dialect"&gt;org.hibernate.dialect.Oracle9Dialect&lt;/property&gt;  
        &lt;property name="connection.url"&gt;jdbc:oracle:thin:@localhost:1521:xe&lt;/property&gt;  
        &lt;property name="connection.username"&gt;system&lt;/property&gt;  
        &lt;property name="connection.password"&gt;oracle&lt;/property&gt;  
        &lt;property name="connection.driver_class"&gt;oracle.jdbc.driver.OracleDriver&lt;/property&gt;  
    &lt;mapping resource="employee.hbm.xml"/&gt;  
    &lt;/session-factory&gt;  
  
&lt;/hibernate-configuration&gt;  

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
