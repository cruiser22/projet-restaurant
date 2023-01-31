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
 * Servlet implementation class EditUser
 */
@WebServlet("/editUser")
public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("identifiant") == null) {
			request.getRequestDispatcher("session").forward(request, response);
		}
		int identifiant = Integer.parseInt(request.getParameter("identifiant"));
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String adresse = request.getParameter("adresse");

		DAOClient dao = new DAOClient();
		Client client = (Client) request.getSession().getAttribute("client");
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setAdresse(adresse);

		try {
			client = dao.edit(identifiant, client);
			request.getSession().setAttribute("client", client);
			request.getRequestDispatcher("session?auth=profil").forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
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
