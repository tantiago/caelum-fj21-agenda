package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OiMundo extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request,
					HttpServletResponse response) 
					throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Primeira Servlet</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>Oi mundo Servelt</h1>");
		out.print("</body>");
		out.print("</html>");
	}
}
