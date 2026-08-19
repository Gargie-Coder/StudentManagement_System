

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class updateStudent
 */
@WebServlet("/updateStudent")
public class updateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String name=request.getParameter("name");
		String course=request.getParameter("course");
		int age=Integer.parseInt(request.getParameter("age"));
		String emailId=request.getParameter("emailid");
		Student student=new Student();
		int result=student.update(rollno,name,course,age,emailId);
		  if(result==1) {
			  request.setAttribute("alertMsg", "Student updated Successfully!");
		        RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
		        rd.forward(request, response);
		  }
		  else {
			  request.setAttribute("alertMsg","Can't update Student, Please try again.");
		        RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
		        rd.forward(request, response);
		  
	}
	}

}
