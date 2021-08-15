package m07.repository;

import m07.entity.Category;
import m07.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface ProductRepository  extends CrudRepository<Product, Integer>{

    @Query(value = " SELECT * FROM products ORDER BY productDate DESC limit 6" , nativeQuery = true)
    public List<Product> listproduct6 ();

    @Query(value = " SELECT * FROM products ORDER BY RAND() limit 6" , nativeQuery = true)
    public List<Product> listproductrad ();


    @Query(value = "select  *from products where categoryId = ? ", nativeQuery = true)
    public List<Product> listproductBycategory (int categoryId);


    @Query(value = "select  *from products where supplierId = ? ", nativeQuery = true)
    public List<Product> listproductBysupper (int supplierId);



    @Query(value = "select *from products ORDER BY id desc", nativeQuery = true)
    public List<Product> listproductdesc ();



    @Query(value = "select *from products where name = ?", nativeQuery = true)
    public List<Product> searchProduct(String name);

    List<Product> findByNameContainingOrCategoryNameContaining(String productName, String categoryName);


    @Query(value = "SELECT * FROM products WHERE unitPrice >= 10 AND unitPrice <= 50 " , nativeQuery = true)
    public List<Product> filterprice1050();


    @Query(value = "SELECT * FROM products WHERE unitPrice >= 50 AND unitPrice <= 100 " , nativeQuery = true)
    public List<Product> filterprice50100();

    @Query(value = "SELECT * FROM products WHERE unitPrice >= 100 AND unitPrice <= 150 " , nativeQuery = true)
    public List<Product> filterprice100150();

    @Query(value = "SELECT * FROM products WHERE unitPrice >= 150 AND unitPrice <= 200 " , nativeQuery = true)
    public List<Product> filterprice150200();

    @Query(value = "select  *from  products where unitPrice >= 200 " , nativeQuery = true)
    public List<Product> filterprice200();

    @Query(value = "SELECT * FROM  products where discount = ?" , nativeQuery = true)
    public  List<Product> sale(Double discount);

    void deleteProductBySupplierId(int id);

    void deleteProductByCategoryId(int id);

    @Query(value = "select id from products where supplierId = ? ", nativeQuery = true)
    public int findProductsBySupplierID (int supplierId);

    @Query(value = "select id from products where categoryId = ? ", nativeQuery = true)
    public int findProductsByCategoryId (int categoryId);

}
