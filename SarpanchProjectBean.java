package com.mnrega.beans;

import java.io.Serializable;

public class SarpanchProjectBean implements Serializable{
	private int sid;
	private int project_id;
	public SarpanchProjectBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SarpanchProjectBean(int sid, int project_id) {
		super();
		this.sid = sid;
		this.project_id = project_id;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	
	
}
