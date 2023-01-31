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
		String numerique = request.getParameter("quantite");
		int quantite = 0;
		if (numerique != "")
			quantite = Integer.parseInt(numerique);
		DAOArticle dao = new DAOArticle();
		HttpSession panier = request.getSession();
		boolean inChoix = false;
		
		for (Ligne l : listeChoix) {
			if (l.getA().getIdArticle() == choix) {
				l.setQuantite(l.getQuantite() + quantite);
				inChoix = true;
			}
		}

		try {
			ArrayList<Article> listeArticles = dao.select();
			request.setAttribute("listeArticles", listeArticles);
			if (!inChoix)
				listeChoix.add(new Ligne(dao.selectById(choix), quantite));
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("listeChoix", listeChoix);
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
