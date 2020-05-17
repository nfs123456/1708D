package com.nfs.sm.mapper;

import java.util.List;

import com.nfs.sm.bean.Course;
import com.nfs.sm.bean.User;

/**
 * @author nfs
 *
 * 2020年5月16日
 */
public interface CourseMapper {

	List<Course> allCourse();

	User login(User user);

	Boolean addCourse(Course course);
}
