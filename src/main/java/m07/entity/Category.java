package m07.entity;



import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="Categories")
public class Category implements Serializable{
	@Id
	@GeneratedValue
	Integer id;

	@NotNull(message = "vui lòng nhập")
	String name;

	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	Collection<Product> products;

	public Category(){

	}

	public Category(Integer id, String name, Supplier supplier) {
		this.id = id;
		this.name = name;
		this.supplier = supplier;
	}

	@ManyToOne
	@JoinColumn(name="supplierId")
	Supplier supplier;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}

}