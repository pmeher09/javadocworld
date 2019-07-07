package com.javadw.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User")
public class User {
	@Id
	@Column(name = "User_ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;

	@Column(name = "emailId", unique = true, nullable = false)
	private String emailId;
	private String password;
	private String name;
	private String mobileNo;
	private String gender;
	private String maritialStatus;
	private String address;
	private String passportNo;
	private String country;
	private String nationality;
	private Date dateOfBirth;
	private String postal;
	private String occupation;
	private String mailingAddress;
	private String state;
	private boolean isUpdateNotification;

	public User() {
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritialStatus() {
		return maritialStatus;
	}

	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassportNo() {
		return passportNo;
	}

	public void setPassportNo(String passportNo) {
		this.passportNo = passportNo;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPostal() {
		return postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getMailingAddress() {
		return mailingAddress;
	}

	public void setMailingAddress(String mailingAddress) {
		this.mailingAddress = mailingAddress;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public boolean isUpdateNotification() {
		return isUpdateNotification;
	}

	public void setUpdateNotification(boolean isUpdateNotification) {
		this.isUpdateNotification = isUpdateNotification;
	}

	public User(String emailId, String password, String name, String mobileNo,
			String gender, String maritialStatus, String address,
			String passportNo, String country, String nationality,
			Date dateOfBirth, String postal, String occupation,
			String mailingAddress) {
		this.emailId = emailId;
		this.password = password;
		this.name = name;
		this.mobileNo = mobileNo;
		this.gender = gender;
		this.maritialStatus = maritialStatus;
		this.address = address;
		this.passportNo = passportNo;
		this.country = country;
		this.nationality = nationality;
		this.dateOfBirth = dateOfBirth;
		this.postal = postal;
		this.occupation = occupation;
		this.mailingAddress = mailingAddress;
	}

}
