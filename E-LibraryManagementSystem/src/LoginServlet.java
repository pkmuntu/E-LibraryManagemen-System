

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			  ServletContext sc=getServletContext();
			  Connection con=(Connection)sc.getAttribute("oracle");
			  String s1=request.getParameter("Username");
			  String s2=request.getParameter("Password");
			  s1=s1.toUpperCase();
			  Statement stmt=con.createStatement();
			  ResultSet rs=stmt.executeQuery("select USERNAME,PASSWORD FROM USERS WHERE CATEGORY='ADMIN'");
			  while(rs.next())
			  {
				  if((s1.equals(rs.getString("Username")))&&(s2.equals(rs.getString("Password"))))
				  {
					  HttpSession hs=request.getSession();
					  hs.setAttribute("username", s1);
					  String s=response.encodeURL("/adminHome.jsp");
					  RequestDispatcher rd =sc.getRequestDispatcher(s);
					  rd.forward(request,response);
				  }
			  }
			   RequestDispatcher rd=sc.getRequestDispatcher("/invalidAdminLogin.jsp");
			   rd.include(request, response);
		}catch(Exception e)
		{
			System.err.println(e);
		}
	}

}
