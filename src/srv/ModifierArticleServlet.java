package srv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOArticle;
import model.Article;

/**
 * Servlet implementation class ModifierArticleServlet
 */
@WebServlet("/ModifierArticleServlet")
public class ModifierArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierArticleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   int idArticle = Integer.parseInt(request.getParameter("idArticle"));
		    String nomArticle = request.getParameter("nomArticle");
		    String descriptionArticle = request.getParameter("descriptionArticle");
		    double prixArticle = Double.parseDouble(request.getParameter("prixArticle"));

		    Article article = new Article(idArticle, nomArticle, descriptionArticle, prixArticle);
		    try {
				DAOArticle.update(article);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 

		    response.sendRedirect("getArticleByName");
		  }

		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
