package com.doancuoikhoa.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.doancuoikhoa.dto.CategoryDto;
import com.doancuoikhoa.dto.PersonDto;
import com.doancuoikhoa.dto.ProductDto;
import com.doancuoikhoa.service.impl.CategoryService;
import com.doancuoikhoa.service.impl.PersonService;
import com.doancuoikhoa.service.impl.ProductService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/quan-tri/trang-chu")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		return mav;
	}

	@RequestMapping(value = "/danh-sach/bai-viet", method = RequestMethod.GET)
	public ModelAndView lastPage() {
		List<ProductDto> listProduct = productService.listAllProduct();
		List<CategoryDto> listCategory = categoryService.listAll();
		ModelAndView mav = new ModelAndView("admin/listProduct");
		mav.addObject("listProduct", listProduct);
		mav.addObject("listCategory", listCategory);
		return mav;
	}

	@RequestMapping(value = "danh-sach/nguoi-dung", method = RequestMethod.GET)
	public ModelAndView listPerson() {
		ModelAndView mav = new ModelAndView("admin/listPerson");
		List<PersonDto> listPerson = personService.listAllPerson();
		mav.addObject("listPerson", listPerson);
		return mav;
	}

	@RequestMapping(value = "danh-sach/the-loai", method = RequestMethod.GET)
	public ModelAndView listCategory() {
		ModelAndView mav = new ModelAndView("admin/listCategory");
		List<CategoryDto> listCategory = categoryService.listAll();
		mav.addObject("listCategory", listCategory);
		return mav;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String uploadFile(@RequestParam("files") MultipartFile files, ProductDto productDto,
			HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String fileName = files.getOriginalFilename();
		String location = "C:/Users/Son/Documents/DATN/project-cuoikhoa/src/main/webapp/uploads/";
		File pathFile = new File(location);
		// check if directory exist, if not, create directory
		if (!pathFile.exists()) {
			pathFile.mkdir();
		}
		String path = "http://localhost:8080/project-cuoikhoa/image?name=" + fileName;
		// create the actual file
		pathFile = new File(location + fileName);
		// save the actual file
		try {
			files.transferTo(pathFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		productDto.setFile(path);
		productService.save(productDto);
		return "redirect:/danh-sach/bai-viet";
	}

	@RequestMapping("/delete")
	public String deleteCustomerForm(@RequestParam long id) {
		productService.delete(id);
		return "redirect:/quan-tri/trang-chu";
	}

	@RequestMapping("/edit")
	public ModelAndView editPage(@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("admin/edit");
		ProductDto productDto = new ProductDto();
		CategoryDto categoryDto = new CategoryDto();
		if (id != null) {
			// categoryDto = categoryService.findByName(categoryName);
			productDto.setCategoryName(categoryDto.getName());
			productDto = productService.findById(id);
		}
		List<CategoryDto> listCategory = categoryService.listAll();
		mav.addObject("productDto", productDto);
		mav.addObject("listCategory", listCategory);
		return mav;
	}

	@RequestMapping("/editCategory")
	public ModelAndView editCategory(@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("admin/editCategory");
		CategoryDto categoryDto = new CategoryDto();
		if (id != null) {
			categoryDto = categoryService.findCategoryById(id);
		}
		mav.addObject("categoryDto", categoryDto);
		return mav;
	}

	@RequestMapping("/saveCategory")
	public String saveCategory(CategoryDto categoryDto, HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");		
		categoryService.save(categoryDto);	
		return "redirect:/danh-sach/the-loai";
	}

}
