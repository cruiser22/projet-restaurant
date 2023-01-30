package srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Session
 */
@WebServlet("/session")
public class Session extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Session() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String context = request.getParameter("auth").toString();
		System.out.println(context);

		if (request.getSession().getAttribute("client") == null) {
			request.getRequestDispatcher("connexion.jsp").forward(request, response);
		} else {
			if (context.equals("profil"))
				request.getRequestDispatcher("WEB-INF/profil.jsp").forward(request, response);
			else if (context.equals("editUser"))
				request.getRequestDispatcher("editUser").forward(request, response);
			else
				request.getRequestDispatcher("WEB-INF/monMenu.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
