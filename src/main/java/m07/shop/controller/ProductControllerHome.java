package m07.shop.controller;

import m07.entity.Product;
import m07.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/")
public class ProductControllerHome extends  BaseController{
    @Autowired
    ProductRepository productRepository;


    //// list product ở trang chủ
    @ModelAttribute("sale")
    public List<Product> sale(Model model,Double discount) {
        List<Product> productList =
                (List<Product>) productRepository.sale(discount);

        return productList;
    }




    @RequestMapping(value = "filterprice1050")
    public String showproductbyid(Model model){
        List<Product> productList =
                (List<Product>) productRepository.filterprice1050();
        model.addAttribute("productList",productList);
        return "product";
    }

    @RequestMapping(value = "filterprice50100")
    public String filterprice010(Model model){
        List<Product> productList =
                (List<Product>) productRepository.filterprice50100();
        model.addAttribute("productList",productList);
        return "product";
    }

    @RequestMapping(value = "filterprice100150")
    public String filterprice1015(Model model){
        List<Product> productList =
                (List<Product>) productRepository.filterprice100150();
        model.addAttribute("productList",productList);
        return "product";
    }

    @RequestMapping(value = "filterprice150200")
    public String filterprice1520(Model model){
        List<Product> productList =
                (List<Product>) productRepository.filterprice150200();
        model.addAttribute("productList",productList);
        return "product";
    }


    @RequestMapping(value = "filterprice200")
    public String filterprice20(Model model){
        List<Product> productList =
                (List<Product>) productRepository.filterprice200();
        model.addAttribute("productList",productList);
        return "product";
    }


}
