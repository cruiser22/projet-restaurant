package srv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAdmin;
import dao.DAOClient;
import model.Admin;
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

		String context = request.getParameter("auth");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String password = request.getParameter("password");
		String adresse = request.getParameter("adresse");
		int identifiant = -1;

		if (request.getParameter("identifiant") != null)
			identifiant = Integer.parseInt(request.getParameter("identifiant"));

		String login = request.getParameter("login");

		DAOClient dao = new DAOClient();
		Client client = null;
		Admin admin = null;

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

		if (context.equals("administration")) {
			DAOAdmin daoAdmin = new DAOAdmin();
			try {
				admin = daoAdmin.login(login, password);
				client = null;
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
				request.getRequestDispatcher("admin.jsp").forward(request, response);
			}
		}

		request.getSession().setAttribute("client", client);
		request.getSession().setAttribute("admin", admin);
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