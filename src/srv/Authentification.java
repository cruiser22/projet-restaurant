package srv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOClient;
import model.Client;

/**
 * Servlet implementation class Authentification
 */
@WebServlet("/auth")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentification() {
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
		int identifiant = Integer.parseInt(request.getParameter("identifiant"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String password = request.getParameter("pass");
		String adresse = request.getParameter("adresse");

		DAOClient dao = new DAOClient();
		Client client = null;

		if (context.equals("connexion")) {
			try {
				client = dao.login(identifiant, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (context.equals("inscription")) {
			try {
				client = dao.signup(identifiant, password, nom, prenom, adresse);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
				request.getRequestDispatcher("inscription.jsp").forward(request, response);
			}
		}

		request.getSession().setAttribute("client", client);
		// request.setAttribute("erreur", false);
		request.getRequestDispatcher("session").forward(request, response);
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
