package com.ipartek.formacion.controladores;

import java.io.IOException;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.pojos.Libro;

@WebServlet("/formulariolibro")
public class FormularioLibroServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4334272055659668440L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accion = req.getParameter("accion");
		String id = req.getParameter("id");
		
		
		if(accion != null && !"insertar".equals(accion)) {
			@SuppressWarnings("unchecked")
			TreeMap<Long, Libro> libros = 
					(TreeMap<Long, Libro>) req.getServletContext().getAttribute("libros");
			
			if(libros == null) {
				resp.sendRedirect("libros");
				return;
			}
			
			Libro libro = libros.get(Long.parseLong(id));
			
			req.setAttribute("libro", libro);
		}
		
			req.setAttribute("accion", accion);
		
		req.getRequestDispatcher("libro.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String accion = req.getParameter("accion");
		String id = req.getParameter("id");
		
		String titulo = req.getParameter("titulo");
		String editorial = req.getParameter("editorial");
		String isbn = req.getParameter("isbn");
		String precio = req.getParameter("precio");
		
		
		
		@SuppressWarnings("unchecked")
		TreeMap<Long, Libro> libros = 
				(TreeMap<Long, Libro>) req.getServletContext().getAttribute("libros");
		
		if(libros == null) {
			
			resp.sendRedirect("libros");
			return;
		}
		
		Long idLong;
		if("insertar".equals(accion)) {
			idLong = libros.lastKey() + 1L;
		} else {
			idLong = Long.parseLong(id);
		}
		
		switch(accion) {
		case "insertar": System.out.println("Insertar");
		case "editar": 
			Libro l = new Libro(idLong, titulo, editorial, isbn, Double.parseDouble(precio));
			libros.put(l.getId(), l);
			break;
		case "borrar": libros.remove(Long.parseLong(id)); break;
		default: throw new ServletException("Opción no definida");
		}
		
		resp.sendRedirect("libros");
	}

}
