package com.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.model.Movies;

@Service
public class MoviesServiceImpl implements MoviesService
{

	@Autowired
	MoviesDAO movieDao;
	@Transactional
	public List<Movies> getList() {
		System.out.println("in getlist");
		return movieDao.getList();
	}
	

	
	public void addMovie(Movies m) {
		System.out.println("addmovie");
		movieDao.addMovie(m);
	}

	
	public void updateMovie(Movies m) {
		movieDao.updateMovie(m);
	}

	@Transactional
	public Movies getMoviebyId(int movieid) {
		
		Movies m=movieDao.getMoviebyId(movieid);
		return m;
	}

	@Transactional
	public void deleteMovie(int  movieid) {
		movieDao.deleteMovie(movieid);
	}

	@Transactional
	public List<Movies> getList1(String category) {
		List<Movies> p=movieDao.getList1(category);
		return p;
	}
}