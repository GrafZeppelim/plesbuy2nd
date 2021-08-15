package m07.shop.controller;

import m07.entity.Customer;
import m07.entity.OrderDetail;
import m07.entity.Role;
import m07.entity.Supplier;
import m07.repository.CustomersRepository;
import m07.repository.OrderDetailRepository;
import m07.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/")
public class CustomerController {

    @Autowired
    CustomersRepository customersRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    @RequestMapping(value = "/registered")
    public String showRegistered(Model model){
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "/registered";
    }

    @RequestMapping(value = "/login")
    public String showLogin(Model model){
        return "/login";
    }

    @RequestMapping(value = "/registered", method = RequestMethod.POST)
    public String addCourse(@ModelAttribute("customer") Customer customer, ModelMap model) {

        customer.setEnabled(true);

        Customer c = customersRepository.save(customer);
        Role role = new Role();
        role.setRole("ROLE_USER");
        role.setCustomer(customer);
        roleRepository.save(role);
        if (null != c) {
            model.addAttribute("message", "Update success");
            model.addAttribute("customer",customer);
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("customer", customer);
        }
        return "redirect:/login";
    }


    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public ResponseEntity<?> getSearchResultViaAjax(
            @Valid @RequestBody Map<String, String> username, Errors errors) {

        String userInput = username.get("username");
        String result = "FAILED";
        try{
            Customer c = customersRepository.findCustomerById(userInput);
            if(c.getId() != null){
                result = "ALREADY";
            }
        }catch(Exception ex){
            result = "OK";
        }
        return new ResponseEntity<>(result, HttpStatus.OK);


    }



}
