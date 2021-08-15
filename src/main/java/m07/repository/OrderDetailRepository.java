package m07.repository;

import m07.entity.OrderDetail;
import m07.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer> {

    // thong ke san đã ,mua theo id customer
    @Query(value = "SELECT DISTINCT productId , p.customerId , pr.name , pr.image , pr.unitBrief \n" +
            "FROM orderdetails o\n" +
            "INNER JOIN orders p ON o.orderId = p.id\n" +
            "INNER JOIN products pr ON o.productId = pr.id\n" +
            "WHERE p.customerId = ?", nativeQuery = true)

    public List<Object[]> productwherecustomer(String customerId);

    //Tìm kiểm don dat hang
    @Query(value = "select *from orderdetails where orderId = ?", nativeQuery = true)
    public List<OrderDetail> searchOrder(int id);

    @Query(value = "select *from orderdetails ORDER BY id desc\n ", nativeQuery = true)
    public List<OrderDetail> lisorderbydesc ();

    void deleteOrderDetailByProductId (int id);

}
