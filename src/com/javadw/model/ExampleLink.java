package com.javadw.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ExampleLink")
public class ExampleLink {
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String category;
	private String link;
	private String Name;
	private Boolean isEnable;
	
	private transient ExampleLink nextLink;
	private transient ExampleLink prevLink;
	
	public ExampleLink(String category, String link, String name) {
		super();
		this.category = category;
		this.link = link;
		Name = name;
	}
	public ExampleLink() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Boolean getIsEnable() {
		return isEnable;
	}
	public void setIsEnable(Boolean isEnable) {
		this.isEnable = isEnable;
	}
	public ExampleLink getNextLink() {
		return nextLink;
	}
	public void setNextLink(ExampleLink nextLink) {
		this.nextLink = nextLink;
	}
	public ExampleLink getPrevLink() {
		return prevLink;
	}
	public void setPrevLink(ExampleLink prevLink) {
		this.prevLink = prevLink;
	}
	@Override
	public String toString() {
		return "ExampleLink [id=" + id + ", category=" + category + ", link="
				+ link + ", Name=" + Name + ", isEnable=" + isEnable + "]";
	}
	
}
