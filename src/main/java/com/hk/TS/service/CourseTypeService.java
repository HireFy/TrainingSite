package com.hk.TS.service;

import com.hk.TS.pojo.CourseType;
import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.List;
import java.util.Map;

public interface CourseTypeService {
    CourseType getByName(String name);

    CourseType getById(Long id);

    Boolean deleteById(Long id);

    Boolean updateById(CourseType courseType);

    Boolean insert(CourseType courseType);

    Boolean isNameExist(String name);

    List<CourseType> getCourseTypes(int pageNum, int pageSize);

}
