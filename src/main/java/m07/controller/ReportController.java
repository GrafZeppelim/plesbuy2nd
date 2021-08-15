package m07.controller;

import m07.entity.Order;
import m07.entity.OrderDetail;
import m07.repository.OrderDetailRepository;
import m07.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.EntityManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class ReportController {



    @Autowired
    OrderRepository orderRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    @ModelAttribute("orderList")
    public List<OrderDetail> showOrder(Model model) {
        List<OrderDetail> orderDetailList =
                (List<OrderDetail>) orderDetailRepository.findAll();
        return orderDetailList;
    }

    @RequestMapping(value = "/admin/order")
    public String showproorders(Model model){
        List<OrderDetail> orderDetails =
                (List<OrderDetail>) orderDetailRepository.lisorderbydesc();
        model.addAttribute("orderDetails",orderDetails);
        return "/admin/order";
    }

    @RequestMapping(value = "/admin/editorder", method = RequestMethod.GET)
    public String editoroder(@RequestParam("id") int id,
                             ModelMap model) {
        model.addAttribute("orderDetails", orderDetailRepository.findOne(id));
        return "admin/editorder";
    }


    @RequestMapping(value = "/admin/editorder", method = RequestMethod.POST)
    public String editordertr(@ModelAttribute("orderDetail") OrderDetail orderDetail, Model model, RedirectAttributes rs) {
        OrderDetail cs = orderDetailRepository.save(orderDetail);
        if (null != cs) {
            model.addAttribute("message", "Update success");
            model.addAttribute("orderDetail", orderDetailRepository.findOne(cs.getId()));
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("orderDetail", orderDetail);
        }
        return "redirect:/admin/order";
    }
}