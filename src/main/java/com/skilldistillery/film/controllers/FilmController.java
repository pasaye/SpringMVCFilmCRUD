package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.data.DatabaseAccessor;
import com.skilldistillery.film.entities.Actor;
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


//	@RequestMapping(path = "AddNewFilm.do", method = { RequestMethod.GET })
//	public ModelAndView getNewFilm(Film film, RedirectAttributes redir) {
//		System.out.println(film);

	@RequestMapping(path = "singleFilm.do", params = "id", method = RequestMethod.GET)
	public ModelAndView singleFilm(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		int newId = Integer.parseInt(id);
		Film film = dao.findFilmById(newId);
		System.out.println(film);
		mv.addObject("film", film);
		mv.setViewName("singleFilm");
		return mv;
	}
	
	@RequestMapping (path = {"AddNewFilm.do"})
	public ModelAndView GetNewFilm( Film film) {

		ModelAndView mv = new ModelAndView();
//		Film movie = dao.createFilm(film);
//		mv.setViewName("redirect:addNewFilm");
//		redir.addFlashAttribute("film",movie);
		Film f = null;

		f = dao.createFilm(film);
		
		if(f != null) {
			System.out.println("f is null");
		}
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
	public ModelAndView keywordSearchSingleFilm(@RequestParam("title")  String title) {
		System.out.println(title);
		ModelAndView mv = new ModelAndView();
		List<Film> films = dao.searchByKeyWord(title);
		System.out.println("reached here");
		System.out.println(films);
		mv.addObject("resultFilms", films);
		mv.setViewName("singleFilm");
		return mv;
	}
	

	@RequestMapping(path = "deleteFilm.do", method = { RequestMethod.GET })
	public ModelAndView deleteFilm(Film film) {
		System.out.println(film);
		ModelAndView mv = new ModelAndView();
		Film f = null;
		f = dao.findFilmById(film.getId());
	
		if(f != null) {
			f = dao.deleteFilm(film);
			System.out.println("film deleted");
			mv.addObject(f);
		}
		mv.setViewName("deleteFilm");
		return mv;
	}


	@RequestMapping("updateFilm.do")
	public ModelAndView updateFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		Film f = new Film();
		f = dao.updateFilm(film);
		mv.setViewName("filmUpdate");
		mv.addObject("update", f);
		
		return mv;
	}
	

	


}