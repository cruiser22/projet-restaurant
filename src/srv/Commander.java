package srv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOArticle;
import dao.DAOCommande;
import model.Client;
import model.Commande;
import model.Ligne;

/**
 * Servlet implementation class Commander
 */
@WebServlet("/Commander")
public class Commander extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int idCommande = 0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Commander() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Client clt = (Client)request.getSession().getAttribute("client");
		ArrayList<Ligne> choix = (ArrayList<Ligne>)request.getSession().getAttribute("listeChoix");
		DAOCommande dao = new DAOCommande();
		int prixTotal = 0;
		
		for (Ligne l : choix)
			prixTotal += l.getPrixLigne();
		
		System.out.println(clt.getId());
		System.out.println(new Date());
		System.out.println(prixTotal);
		System.out.println(choix);
		Commande cmd = new Commande(clt.getId(), new Date(), prixTotal, choix);
		
		try {
			dao.insert(cmd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("client", clt);
		request.setAttribute("commande", cmd);
		
		request.getRequestDispatcher("WEB-INF/commandes.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
