package com.niit.foodcart.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity
@Table(name="frontcrud")
public class Foodproducts implements Serializable{
	
	private static final long serialVersionUID = 4657462015039726030L;
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int productId;
	@Column
	@NotNull(message="product price is mandatory")
private double productprice ;
	@Column
	@NotEmpty(message="description is important")
	@Size(min=10,max=100)
private String productdescription;
	@Column
	@NotEmpty(message="quantity is mandatory")
private int productquantity;
	@Column
	@NotEmpty(message="select a category")
private String category;
	@Column
	@NotEmpty(message="product name cannot be null")
	@Size(min=5,max=20)
	private String productname;
	@NotEmpty(message="imagename cannot be empty")
	@Size(min=5,max=20)
private String imagename;	
@Transient
private MultipartFile image;

@OneToMany(mappedBy = "foodproducts", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
@JsonIgnore
private List<CartItem> cartItemList;

public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}
public String getImagename() {
	return imagename;
}
public void setImagename(String imagename) {
	this.imagename = imagename;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public double getProductprice() {
	return productprice;
}
public void setProductprice(double productprice) {
	this.productprice = productprice;
}
public String getProductdescription() {
	return productdescription;
}
public void setProductdescription(String productdescription) {
	this.productdescription = productdescription;
}
public int getProductquantity() {
	return productquantity;
}
public void setProductquantity(int productquantity) {
	this.productquantity = productquantity;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}

}
