package lst;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import dao.DAOArticle;
import model.Article;

/**
 * Application Lifecycle Listener implementation class GetArticles
 *
 */
@WebListener
public class GetArticles implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public GetArticles() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		try {
			ArrayList<Article> liste = new DAOArticle().select();
			ArrayList<Article> derniersArticles = new ArrayList<Article>();
			derniersArticles.add(liste.get(0));
			derniersArticles.add(liste.get(1));
			derniersArticles.add(liste.get(2));
			arg0.getServletContext().setAttribute("liste", liste);
			arg0.getServletContext().setAttribute("derniersArticles", derniersArticles);

			ArrayList<Article> entrees = new DAOArticle().selectByCategorie(1);
			arg0.getServletContext().setAttribute("entrees", entrees);

			ArrayList<Article> americain = new DAOArticle().selectByCategorie(2);
			arg0.getServletContext().setAttribute("americain", americain);

			ArrayList<Article> mexicain = new DAOArticle().selectByCategorie(3);
			arg0.getServletContext().setAttribute("mexicain", mexicain);

			ArrayList<Article> desserts = new DAOArticle().selectByCategorie(4);
			arg0.getServletContext().setAttribute("desserts", desserts);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
