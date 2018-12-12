package com.ipartek.formacion.controladores;

import java.io.IOException;
import java.util.TreeMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.pojos.Libro;

@WebServlet("/libros")
public class LibroServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5387634321784772692L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		@SuppressWarnings("unchecked")
		TreeMap<Long, Libro> libros = 
				(TreeMap<Long, Libro>) req.getServletContext().getAttribute("libros");
		ServletContext application = req.getServletContext();
		if(libros == null) {
			libros = new TreeMap<>();
			
			for (Long i = 1L; i <= 3L; i++) {
				libros.put(i, new Libro(i, "Libro " + i, "Editorial " + i, "123456789101" + i, 15 + i));

			}
			
		}
		
		application.setAttribute("libros", libros);

		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
