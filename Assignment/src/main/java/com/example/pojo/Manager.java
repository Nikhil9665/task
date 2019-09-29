package com.example.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="manager")
public class Manager {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int managerId;
	@Column(unique=true)
	private String email;
	@Column
	private String managerFirstname;
	@Column
	private String managerLastname;
	@Column
	private String password;
	@Column
	private String managerAddress;
	@Column
	private String managerDob;
	@Column
	private String company;
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getManagerFirstname() {
		return managerFirstname;
	}
	public void setManagerFirstname(String managerFirstname) {
		this.managerFirstname = managerFirstname;
	}
	public String getManagerLastname() {
		return managerLastname;
	}
	public void setManagerLastname(String managerLastname) {
		this.managerLastname = managerLastname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getManagerAddress() {
		return managerAddress;
	}
	public void setManagerAddress(String managerAddress) {
		this.managerAddress = managerAddress;
	}
	public String getManagerDob() {
		return managerDob;
	}
	public void setManagerDob(String managerDob) {
		this.managerDob = managerDob;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}


}