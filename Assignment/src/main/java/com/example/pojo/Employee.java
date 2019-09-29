package com.example.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int empId;
	@Column
	private String empFirstname;
	@Column
	private String empLastname;
	@Column
	private String empAddress;
	@Column
	private String empDob;
	@Column
	private long empMobileNo;
	@Column
	private String city;
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpFirstname() {
		return empFirstname;
	}
	public void setEmpFirstname(String empFirstname) {
		this.empFirstname = empFirstname;
	}
	public String getEmpLastname() {
		return empLastname;
	}
	public void setEmpLastname(String empLastname) {
		this.empLastname = empLastname;
	}
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}
	public String getEmpDob() {
		return empDob;
	}
	public void setEmpDob(String empDob) {
		this.empDob = empDob;
	}
	public long getEmpMobileNo() {
		return empMobileNo;
	}
	public void setEmpMobileNo(long empMobileNo) {
		this.empMobileNo = empMobileNo;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}

}