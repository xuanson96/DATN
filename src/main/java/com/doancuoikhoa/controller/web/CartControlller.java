package com.doancuoikhoa.controller.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.doancuoikhoa.converter.OrderDetailConverter;
import com.doancuoikhoa.dto.CategoryDto;
import com.doancuoikhoa.dto.OrderDetailDto;
import com.doancuoikhoa.service.impl.CategoryService;
import com.doancuoikhoa.service.impl.ProductService;

@Controller
public class CartControlller {

	@Autowired
	private ProductService productService;
	@Autowired
	private OrderDetailConverter orderDetailConverter;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/addCart", method = RequestMethod.POST)
	public ModelAndView addCart(@RequestParam("id") Long id, HttpSession session) {		
		ModelAndView mav = new ModelAndView("orderDetail");
		List<CategoryDto> listCategory = categoryService.listAll();
		List<OrderDetailDto> listCart = (List<OrderDetailDto>) session.getAttribute("listCart");
		if (listCart == null) {
			// Giỏ hàng chưa có sản phẩm nào add luôn sp vào cart
			listCart = new ArrayList<>();			
			listCart.add(new OrderDetailDto(productService.findById(id), 1));						
		} else {
			// Giỏ hàng đã có sản phẩm
			boolean flag = false;
			for (OrderDetailDto c : listCart) {
				// Kiểm tra xem sản phẩm thêm vào đã có trong giỏ hàng chưa
				if (c.getProductDto().getId() == id) {
					// Sản phẩm đã có trong giỏ hàng ta tăng biến số lượng
					int a = c.getQuantity();
					c.setQuantity(a + 1);
					flag = true;
					break;
				}
			}
			// sản phẩm chưa có trong giỏ hàng thì ta add sản phẩm vào giỏ hàng
			if (!flag) {
				listCart.add(new OrderDetailDto(productService.findById(id), 1));
			}
		}
		// set giỏ hàng lên session
		session.setAttribute("listCart", listCart);
		session.setAttribute("total", getTotal(listCart));
		mav.addObject("listCategory", listCategory);
		return mav;
	}

	// Tính tổng tiền trong giỏ hàng
	public float getTotal(List<OrderDetailDto> listCart) {
		float total = 0;
		for (OrderDetailDto c : listCart) {
			total += c.getQuantity() * c.getProductDto().getPrice();
		}
		return total;
	}
	

	@RequestMapping(value = "/updateCart")
	public String updateCart(HttpSession session, HttpServletRequest request) {

		List<OrderDetailDto> listCart = (List<OrderDetailDto>) session.getAttribute("listCart");		

		String[] arrQuantity = request.getParameterValues("quantity");

		for (int i = 0; i < listCart.size(); i++) {
			listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
		}
		session.setAttribute("listCart", listCart);
		session.setAttribute("total", getTotal(listCart));		
		return "orderDetail";
	}

	@RequestMapping(value = "/deleteCart")
	//Phải khai báo session đầu tiên
	public String deleteCartById( HttpSession session,@RequestParam("id") Long id) {

		List<OrderDetailDto> listCart = (List<OrderDetailDto>) session.getAttribute("listCart");
		// Long id = request.getParameter(Long.parseLong(id));
		for (int i = 0; i < listCart.size(); i++) {
			if(listCart.get(i).getProductDto().getId() == id) {
				listCart.remove(i);
				break;
			}
		}
		session.setAttribute("listCart", listCart);
		session.setAttribute("total", getTotal(listCart));
		return "orderDetail";
	}
	
	@RequestMapping(value = "/orderCart")
	public String orderCart() {
		return "orderDetail";
	}
}
