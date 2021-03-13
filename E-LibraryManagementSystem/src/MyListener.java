

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class MyListener
 *
 */
@WebListener
public class MyListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
	 Connection con;
    public MyListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	  try{
    		  con.close();
    		  }catch(Exception e)
    		  {
    		   System.err.println(e);
    		  }
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
   
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	  try{
    		  Class.forName("oracle.jdbc.driver.OracleDriver");
    		  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","C##MUNTUPK","9800");
    		  ServletContext sc=sce.getServletContext();
    		  sc.setAttribute("oracle", con);
    		  }catch(Exception e)
    		  {
    		   System.err.println(e);
    		  }
    		 
    }
	
}
