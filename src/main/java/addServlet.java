

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class addServlet
 */
@WebServlet("/add")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		String name=request.getParameter("name");
		String course=request.getParameter("course");
		int age=Integer.parseInt(request.getParameter("age"));
		String emailId=request.getParameter("email");
		Student student=new Student();
		student.setAge(age);
		student.setEmailid(emailId);
		student.setCourse(course);
		student.setName(name);
		student.setRollno(rollno);
	int result=	student.add();
	  if(result==1) {
		  request.setAttribute("alertMsg", "Student added Successfully!");
	        RequestDispatcher rd = request.getRequestDispatcher("add-student.jsp");
	        rd.forward(request, response);
	  }
	  else {
		  request.setAttribute("alertMsg", "Student already exists or Invalid credentials. Please try again.");
	        RequestDispatcher rd = request.getRequestDispatcher("add-student.jsp");
	        rd.forward(request, response);
	  }
	}

}
