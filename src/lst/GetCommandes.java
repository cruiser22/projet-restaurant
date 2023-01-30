package lst;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import model.Client;

/**
 * Application Lifecycle Listener implementation class GetCommandes
 *
 */
@WebListener
public class GetCommandes implements HttpSessionListener {

	/**
	 * Default constructor.
	 */
	public GetCommandes() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		Client client = (Client) arg0.getSession().getAttribute("client");
		// DAOCommande dao = new DAOCommande();
		// ArrayList<Commande> commandes = dao.getCommandesById(client.getId());
		// arg0.getSession().setAttribute("commandes", commandes);
	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
	}

}
