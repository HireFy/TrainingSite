package com.hk.TS.dao;

import com.hk.TS.pojo.Course;
import java.util.List;

public interface CourseDao {
    Course getById(Long id);

    Boolean insert(Course course);

    Boolean deleteById(Long id);

    Boolean update(Course person);

    List<Course> getAllCourse();
}
