package com.nfs.sm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nfs.sm.bean.Course;
import com.nfs.sm.bean.User;
import com.nfs.sm.mapper.CourseMapper;

/**
 * @author nfs
 *
 * 2020年5月16日
 */
@Service
public class CourseServiceImp implements CourseService {
	
	@Autowired
	private CourseMapper courseMapper;

	@Override
	public List<Course> allCourse() {
		// TODO Auto-generated method stub
		return courseMapper.allCourse();
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return courseMapper.login(user);
	}

}
