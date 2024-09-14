

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import org.mindrot.jbcrypt.BCrypt;



  

public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        	
        	try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = null;
				String URL = "jdbc:mysql://localhost:3306/mydb";
			    String username = "root";
			    String password = "Neeraj@102002";
			    con = DriverManager.getConnection(URL, username, password);
			    
			    
			    String uName = request.getParameter("name");
			    String uEmail = request.getParameter("email");
			    String uId = request.getParameter("id");
				String uPassword = request.getParameter("password");
				
				//hashpassword
				String hashPassword = BCrypt.hashpw(uPassword, BCrypt.gensalt());
				
				String query = "insert into HR(HRname, HRemail, HRID, HRpassword) values('" + uName + "', '"+ uEmail +"', '"+ uId +"', '"+ hashPassword +"')";
				
				Statement st = con.createStatement();
				
				st.executeUpdate(query);
				System.out.println("--Registarion is successful--");
				request.getRequestDispatcher("/success.jsp").forward(request, response);
				con.close();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		     
        	
        	
	}

}
