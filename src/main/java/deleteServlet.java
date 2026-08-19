

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteStudent")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno = Integer.parseInt(request.getParameter("rollno"));
	  Student model=new Student();
	  int rowAffected=model.delete(rollno);
	  if(rowAffected==1) {
		  request.setAttribute("alertMsg", "Student Deleted Successfully!");
	        RequestDispatcher rd = request.getRequestDispatcher("delete.jsp");
	        rd.forward(request, response);
	  }
	  else {
		  request.setAttribute("alertMsg", "Student doesn't  exists or Invalid credentials. Please try again.");
	        RequestDispatcher rd = request.getRequestDispatcher("delete.jsp");
	        rd.forward(request, response);
	  }
	}

}
