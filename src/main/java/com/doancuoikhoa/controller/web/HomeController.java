package com.doancuoikhoa.controller.web;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.doancuoikhoa.dto.CategoryDto;
import com.doancuoikhoa.dto.ProductDto;
import com.doancuoikhoa.service.impl.CategoryService;
import com.doancuoikhoa.service.impl.ProductService;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

	@Autowired
	private ServletContext servletContext;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}
		
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView ShowProduct(@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "limit", required = false) Integer limit, HttpServletRequest request) {
		List<CategoryDto> listCategory = categoryService.listAll();
		ProductDto product = new ProductDto();
		ProductDto product1 = new ProductDto();
		if (page == null && limit == null) {
			product.setPage(1);
			product.setLimit(6);
			Pageable pageable = new PageRequest(product.getPage() - 1, product.getLimit());
			product.setListResult(productService.listAll(pageable));
			// product.setListResult(productService.listAllProduct());
			product.setTotalItem(productService.getTotalItem());
			product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getLimit()));

		} else {
			product.setPage(page);
			product.setLimit(limit);
			Pageable pageable = new PageRequest(page - 1, limit);
			product.setListResult(productService.listAll(pageable));
			// List<ProductDto> listProduct = productService.listAll(pageable);
			product.setTotalItem(productService.getTotalItem());
			product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getLimit()));
		}
		ModelAndView mav = new ModelAndView("web/home");
		product1.setListResult(productService.listAllProduct());
		mav.addObject("product", product);
		mav.addObject("product1", product1);
		mav.addObject("listCategory", listCategory);
		return mav;
	}

	@RequestMapping(value = "/image", method = RequestMethod.GET)
	public void testphoto(HttpServletResponse response, @RequestParam("name") String name) throws IOException {
		InputStream in = servletContext.getResourceAsStream("/uploads/" + name);
		response.setContentType(MediaType.IMAGE_JPEG_VALUE);
		IOUtils.copy(in, response.getOutputStream());
	}

	@RequestMapping(value = "/search")
	public ModelAndView search(@RequestParam(value = "keyword", required = false) String keyword) {
		ModelAndView mav = new ModelAndView();
		List<CategoryDto> listCategory = categoryService.listAll();
		List<ProductDto> listProduct = productService.listAllProduct();
		if (keyword.equals(" ")) {
			mav = new ModelAndView("web/home");			
			mav.addObject("listCategory", listCategory);
			mav.addObject("listProduct", listProduct);
		} else {
			List<ProductDto> result = productService.search(keyword);			
			mav = new ModelAndView("result");			
			mav.addObject("listCategory", listCategory);
			mav.addObject("listProduct", listProduct);
			mav.addObject("result", result);
		}
		return mav;
	}
	
	@RequestMapping(value = "/detailProduct" , method = RequestMethod.POST)
	public ModelAndView detailProduct(@RequestParam ("id") Long id) {	
		ModelAndView mav = new ModelAndView("web/detailProduct");
		List<CategoryDto> listCategory = categoryService.listAll();
		ProductDto productDto = productService.findById(id);
		mav.addObject("productDto", productDto);
		mav.addObject("listCategory", listCategory);
		return mav;
	}		
}
