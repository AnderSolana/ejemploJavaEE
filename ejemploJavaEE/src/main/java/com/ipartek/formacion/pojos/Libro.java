package com.ipartek.formacion.pojos;

public class Libro {
	private Long id;
	private String titulo, editorial, isbn;
	private double precio;

	public Libro() {
	}

	public Libro(Long id, String titulo, String editorial, String isbn, double precio) {
		setId(id);
		setTitulo(titulo);
		setEditorial(editorial);
		setIsbn(isbn);
		setPrecio(precio);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getEditorial() {
		return editorial;
	}

	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	@Override
	public String toString() {
		return "\nLibro [id=" + id + "\nTitulo=" + titulo + "\nEditorial=" + editorial + "\nIsbn=" + isbn + "\nPrecio="
				+ precio + "]\n";
	}

}
