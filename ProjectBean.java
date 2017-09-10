package com.mnrega.beans;

import java.io.Serializable;

public class ProjectBean implements Serializable {
	
	private int project_id;
	private String project_name;
	private String project_description;
	private int project_duration;
	private String project_startdate;
	private int project_capacity;
	private String project_status;
	private String project_assign;
	public ProjectBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectBean(int project_id, String project_name,
			String project_description, int project_duration,
			String project_startdate, int project_capacity,
			String project_status,String project_assign) {
		super();
		this.project_id = project_id;
		this.project_name = project_name;
		this.project_description = project_description;
		this.project_duration = project_duration;
		this.project_startdate = project_startdate;
		this.project_capacity = project_capacity;
		this.project_status = project_status;
	this.project_assign = project_assign;}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_description() {
		return project_description;
	}
	public void setProject_description(String project_description) {
		this.project_description = project_description;
	}
	public int getProject_duration() {
		return project_duration;
	}
	public void setProject_duration(int project_duration) {
		this.project_duration = project_duration;
	}
	public String getProject_startdate() {
		return project_startdate;
	}
	public void setProject_startdate(String project_startdate) {
		this.project_startdate = project_startdate;
	}
	public int getProject_capacity() {
		return project_capacity;
	}
	public void setProject_capacity(int project_capacity) {
		this.project_capacity = project_capacity;
	}
	public String getProject_status() {
		return project_status;
	}
	public void setProject_status(String project_status) {
		this.project_status = project_status;
	}
	public String getProject_assign() {
		return project_assign;
	}
	public void setProject_assign(String project_assign) {
		this.project_assign = project_assign;
	}

	}
