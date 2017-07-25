package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class MostraContatoLogic implements Logica {
		public String executa(HttpServletRequest req, HttpServletResponse res)
				throws Exception {
		
		long id = Long.parseLong(req.getParameter("id"));

		
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.pesquisa(id);
		req.setAttribute("contato", contato);
		
		System.out.println("Monstrando contato ...");
		
		return "altera-contato.jsp";
		
	}
}
