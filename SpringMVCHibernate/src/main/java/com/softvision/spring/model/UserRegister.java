package com.softvision.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Data
@Setter
@Getter
@ToString
@Table(name = "User")
public class UserRegister {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Setter
	@Getter
	private int id;
	@Column(name = "firstName")
	@Setter
	@Getter
	private String firstName;
	@Column(name = "lastName")
	@Setter
	@Getter
	private String lastName;
	@Column(name = "emailId")
	@Setter
	@Getter
	private String emailId;
	@Column(name = "gender")
	@Setter
	@Getter
	private String gender;
	@Column(name = "contactNumber")
	@Setter
	@Getter
	private String contactNumber;
	@Column(name = "password")
	@Setter
	@Getter
	private String password;
	@Column(name = "street")
	@Setter
	@Getter
	private String street;
	@Column(name = "city")
	@Setter
	@Getter
	private String city;
	@Column(name = "state")
	@Setter
	@Getter
	private String state;
	@Column(name = "zipcode")
	@Setter
	@Getter
	private String zipcode;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}
