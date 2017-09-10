package com.mnrega.beans;

import java.io.Serializable;

public class SarpanchBean implements Serializable {
	
	private int sid;
	private String sname;
	private String spanchayat;
	private String smobile;
	private String semail;
	private String spassword;
	
	
	public SarpanchBean() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getSid() {
		return sid;
	}


	public void setSid(int sid) {
		this.sid = sid;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getSpanchayat() {
		return spanchayat;
	}


	public void setSpanchayat(String spanchayat) {
		this.spanchayat = spanchayat;
	}


	public String getSmobile() {
		return smobile;
	}


	public void setSmobile(String smobile) {
		this.smobile = smobile;
	}


	public String getSemail() {
		return semail;
	}


	public void setSemail(String semail) {
		this.semail = semail;
	}


	public String getSpassword() {
		return spassword;
	}


	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}


	public SarpanchBean(int sid, String sname, String spanchayat,
			String smobile, String semail, String spassword) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.spanchayat = spanchayat;
		this.smobile = smobile;
		this.semail = semail;
		this.spassword = spassword;
	}
	

	
	
	
	
	
}