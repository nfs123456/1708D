package com.nfs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nfs.sm.bean.Course;
import com.nfs.sm.bean.User;
import com.nfs.sm.service.CourseService;

/**
 * @author nfs
 *
 *         2020年5月16日
 */
@RestController
public class CourseController {

	@Autowired
	private CourseService courseService;

	
	@PostMapping("login.do")
	public User loginUser(User user) {
		User login = courseService.login(user);
		return login;
	}
	
	@GetMapping("allCourse.do")
	private ModelAndView allCourse(Model model) {
		ModelAndView modelAndView = new ModelAndView("list");
		List<Course> list = courseService.allCourse();
		modelAndView.addObject("list", list);
		return modelAndView;
	}
}
