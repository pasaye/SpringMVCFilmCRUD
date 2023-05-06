package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.skilldistillery.film.data.DatabaseAccessor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	@Autowired
	private DatabaseAccessor dao;

	@RequestMapping(path = "filmId.do", params = "id", method = RequestMethod.GET)
	public ModelAndView selectByFilmId(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		int newId = Integer.parseInt(id);
		Film film = dao.findFilmById(newId);
		mv.addObject("film", film);
		mv.setViewName("filmId");
		return mv;
	}

	@RequestMapping(path = "keyword.do", params = "title", method = RequestMethod.GET)
	public ModelAndView keywordSearch(@RequestParam("title") String title) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = dao.searchByKeyWord(title);
		mv.addObject("keyword", films);
		mv.setViewName("keyword");
		return mv;
	}

}
