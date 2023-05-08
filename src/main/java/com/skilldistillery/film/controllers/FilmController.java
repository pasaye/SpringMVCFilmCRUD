package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	@RequestMapping(path = "singleFilm.do", params = "id", method = RequestMethod.GET)
	public ModelAndView singleFilm(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		int newId = Integer.parseInt(id);
		Film film = dao.findFilmById(newId);
		mv.addObject("film", film);
		mv.setViewName("singleFilm");
		return mv;
	}

	@RequestMapping (path = {"AddNewFilm.do"})
	public ModelAndView getNewFilm( Film film) {
		ModelAndView mv = new ModelAndView();
		Film f = null;
		f = dao.createFilm(film);
		mv.addObject("newFilm", f);
		mv.setViewName("addNewFilm");

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

	@RequestMapping(path = "singleFilm.do", params = "title", method = RequestMethod.GET)
	public ModelAndView keywordSearchSingleFilm(@RequestParam("title") String title) {
		System.out.println(title);
		ModelAndView mv = new ModelAndView();
		List<Film> films = dao.searchByKeyWord(title);
		mv.addObject("resultFilms", films);
		mv.setViewName("singleFilm");
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do",params = "id", method = { RequestMethod.POST })
	public ModelAndView deleteFilm(@RequestParam("id") String id) {

		ModelAndView mv = new ModelAndView();
		int newId = Integer.parseInt(id);
		Film film = dao.findFilmById(newId);

		if (film != null) {
			film = dao.deleteFilm(film);
			System.out.println("film deleted");
			mv.addObject(film);
		}
		mv.setViewName("deleteFilm");
		return mv;
	}


	@RequestMapping(path = "updateFilm.do", params = "id", method = { RequestMethod.POST })
	public ModelAndView updateFilms(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		int newId =0;
		try {
			System.out.println(id);
			newId = Integer.parseInt(id);
		} catch (NumberFormatException e) {
			System.out.println("COMMA!!!!!");
			e.printStackTrace();
		}
		System.out.println(newId);
		Film film = dao.findFilmById(newId);
		System.out.println(newId);
		
		if(film != null ) {
			System.out.println("This printed!!!!!!!!");
		film = dao.updateFilm(film);
		mv.addObject("update",film);
		}
		else {
			System.out.println("HIT");
		}
		mv.setViewName("updateFilm");
		
		return mv;
	}

	@RequestMapping(path = "updatedFilms.do", params = "id", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView updateFilm(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		int newId = Integer.parseInt(id);
		Film filmMe = dao.findFilmById(newId);
		mv.addObject("update", filmMe);
		mv.setViewName("updatedFilms");
  
		return mv;
	}

}
