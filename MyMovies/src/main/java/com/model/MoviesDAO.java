package com.model;

import java.util.List;

import com.model.Movies;

public interface MoviesDAO
{
	public List<Movies> getList();
	public void addMovie(Movies m);
	public void updateMovie(Movies m);
	public void deleteMovie(int movieid);
	public Movies getMoviebyId(int movieid);
	public List<Movies>getList1(String category);
}
