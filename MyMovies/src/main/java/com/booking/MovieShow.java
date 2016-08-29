package com.booking;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class MovieShow 
{
	@Id
	@GeneratedValue
	int movieshowid;
	@Column
	Date datetime;
	@Column
	int movieid;
	@Column
	int hallid;
	public int getMovieshowid() {
		return movieshowid;
	}
	public void setMovieshowid(int movieshowid) {
		this.movieshowid = movieshowid;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public int getMovieid() {
		return movieid;
	}
	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}
	public int getHallid() {
		return hallid;
	}
	public void setHallid(int hallid) {
		this.hallid = hallid;
	}
	
}
