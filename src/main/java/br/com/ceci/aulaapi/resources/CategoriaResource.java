package br.com.ceci.aulaapi.resources;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.ceci.aulaapi.domain.Categoria;

@RestController
@RequestMapping("/categorias")
public class CategoriaResource {

	@GetMapping()
	public List<Categoria> listar() {

		Categoria cat1 = new Categoria(1, "informática");
		Categoria cat2 = new Categoria(2, "escritório");

		List<Categoria> lista = new ArrayList<>();

		lista.add(cat1);
		lista.add(cat2);

		return lista;
	}

}
