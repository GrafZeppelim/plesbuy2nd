package m07.repository;

import m07.entity.Order;
import m07.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderRepository extends CrudRepository<Order, Integer> {
    //List sản phẩm đã order by custommer ID
    @Query(value = "select *from orders where customerId = ?", nativeQuery = true)
    public List<Order> listoderbycus (String customerId);
}
