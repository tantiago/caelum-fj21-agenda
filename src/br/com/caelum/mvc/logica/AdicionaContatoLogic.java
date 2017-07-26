package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AdicionaContatoLogic implements Logica{
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception{
		
		String nome = req.getParameter("nome");
		String endereco = req.getParameter("endereco");
		String email = req.getParameter("email");
		String dataEmTexto = req.getParameter("dataNascimento");
		Calendar dataNascimento = null;
		
		try {
			Date date = 
					new SimpleDateFormat("dd/MM/yyyy")
					.parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			System.out.println("Erro de conversão da data ...");
			return dataEmTexto; //para a execucação do método
		}
		
		//monta um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);
		
		Connection connection = (Connection) req
				.getAttribute("conexao");
		
		//salva o contato
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);
		
		System.out.println("Adicionando contato ...");
		
		return "mvc?logica=ListaContatosLogic";
	}

}
