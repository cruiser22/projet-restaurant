package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAOArticle;
import model.Article;
import model.Ligne;

/**
 * Servlet implementation class AjouterArticle
 */
@WebServlet("/AjouterArticle")
public class AjouterArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Ligne> listeChoix = new ArrayList<Ligne>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterArticle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int choix = Integer.parseInt(request.getParameter("choix"));
		int quantite = Integer.parseInt(request.getParameter("quantite"));
		DAOArticle dao = new DAOArticle();
		HttpSession panier = request.getSession();
		
		try {
			ArrayList<Article> listeArticles = dao.select();
			request.setAttribute("listeArticles", listeArticles);
			listeChoix.add(new Ligne(dao.selectById(choix), quantite));
			request.setAttribute("listeChoix", listeChoix);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		panier.setAttribute("listeChoix", listeChoix);
		request.getRequestDispatcher("WEB-INF/choixArticles.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
