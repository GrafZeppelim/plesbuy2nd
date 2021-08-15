package m07.repository;

import m07.entity.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomersRepository extends CrudRepository<Customer, Integer> {
    Customer findCustomerById(String username);
}
