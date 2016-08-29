package com.model;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.model.Movies;

@Repository
public class MoviesDAOImpl implements MoviesDAO
{
	@Autowired
    SessionFactory sessionFactory;
	
	@Transactional
	public List<Movies> getList() {
		//return (List<Movies>) sessionFactory.openSession().createQuery("from Movies").list();
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Movies> movieList = session.createQuery("from Movies") .list();  
		  session.close();  
		  return movieList;  
	}

	@Transactional
	public void addMovie(Movies movie) 
	{
		 Session session=sessionFactory.openSession();
        session.saveOrUpdate(movie);
        session.flush();
        session.close();
	}

	@Transactional
	public void updateMovie(Movies movie) {
		//sessionFactory.openSession().saveOrUpdate(m);
		System.out.println("Hello");
		Session session=sessionFactory.openSession();
		System.out.println("Hello1");
	        session.saveOrUpdate(movie);
	        session.flush();
	        session.close();
	}

	@Transactional
	public void deleteMovie(int movieid) {
		sessionFactory.openSession().createQuery("DELETE FROM Movies WHERE movieid = "+movieid).executeUpdate();  
	}

	@Transactional
	public Movies getMoviebyId(int movieid) {
		Session session = sessionFactory.openSession();  
		  Movies prod = (Movies) session.load(Movies.class, movieid);  
		  return prod;
	}

	@Transactional
	public List<Movies> getList1(String category) {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Movies> ProductList = session.createQuery("from Movies where category= '"+ category +"'").list();  
		  session.close();  
		  return ProductList;		
	}
}