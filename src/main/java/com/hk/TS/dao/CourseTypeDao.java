package com.hk.TS.dao;

import com.hk.TS.pojo.CourseType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseTypeDao {
    CourseType getByName(String name);

    CourseType getById(Long id);

    Boolean deleteById(Long id);

    Boolean insert(CourseType courseType);

    Boolean update(CourseType courseType);

    Boolean isNameExist(String name);

    List<CourseType> getCouseTypes(@Param("offset") int offset, @Param("size") int size);
}
