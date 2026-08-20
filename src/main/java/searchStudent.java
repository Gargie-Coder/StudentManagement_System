

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/searchStudent")
public class searchStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int rollno = Integer.parseInt(
request.getParameter("rollno")
);

Student student = new Student();

List<Object> list = student.search(rollno);

request.setAttribute("studentdata", list);

RequestDispatcher rd =
request.getRequestDispatcher("SearchResult.jsp");

rd.forward(request, response);
}}



