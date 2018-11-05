package com.hk.TS.service;

import com.hk.TS.pojo.Course;

import java.util.List;
import java.util.Map;

public interface CourseService {
    Course getById(Long id);

    Boolean insert(Course course);

    Boolean deleteById(Long id);

    Boolean updateById(Map<String, Object> maps);

    List<Course> getAllCourse();
}
