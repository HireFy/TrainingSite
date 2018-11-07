package com.hk.TS.dao;

import com.hk.TS.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseDao {
    Course getById(Long id);

    Boolean insert(Course course);

    Boolean deleteById(Long id);

    Boolean update(Course course);

    Boolean isNameExist(String name);

    List<Course> getCourses(@Param("offset") int offset, @Param("pageSize") int pageSize);

}
