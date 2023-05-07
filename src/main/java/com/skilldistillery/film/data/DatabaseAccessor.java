package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessor {
	public Film findFilmById(int filmId);

	public Actor findActorById(int actorId);

	public List<Actor> findActorsByFilmId(int filmId);

	public List<Film> findFilmsByActorId(int actorId);

	public List<Film> searchByKeyWord(String keyword);

	public Actor createActor(Actor actor);

	boolean saveActor(Actor actor);

	boolean deleteActor(Actor actor);

	public Film createFilm(Film film);

	boolean saveFilm(Film film);

	Film deleteFilm(Film film);

	String getFilmCategory(int id);

	Film updateFilm(Film film);

}
