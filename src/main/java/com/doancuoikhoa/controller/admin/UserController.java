package com.doancuoikhoa.controller.admin;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.doancuoikhoa.dto.PersonDto;
import com.doancuoikhoa.dto.RoleDto;
import com.doancuoikhoa.service.impl.PersonService;
import com.doancuoikhoa.service.impl.RoleService;

@Controller
@SessionAttributes("roles")
public class UserController {

	@Autowired
	private PersonService personService;
	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView profile(@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("profile");
		PersonDto person = personService.findPersonById(id);
		mav.addObject("person", person);
		return mav;
	}

	@ModelAttribute(value = "roles")
	public List<RoleDto> initializeRole() {
		List<RoleDto> roles = roleService.listAllRole();
		return roles;
	}

	@RequestMapping(value = "/profileSave", method = RequestMethod.POST)
	public ModelAndView uploadFile(@RequestParam("file") MultipartFile file, PersonDto personDto, BindingResult result,
			HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String fileName = file.getOriginalFilename();
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
			file.transferTo(pathFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		personDto.setImage(path);
		personService.save(personDto);

		ModelAndView mav = new ModelAndView("profile");
		PersonDto person = personService.findPersonById(personDto.getId());
		mav.addObject("person", person);

		return mav;
	}
}
