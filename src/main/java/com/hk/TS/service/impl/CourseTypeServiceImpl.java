package com.hk.TS.service.impl;

import com.hk.TS.dao.CourseTypeDao;
import com.hk.TS.pojo.CourseType;
import com.hk.TS.service.CourseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("courseTypeService")
public class CourseTypeServiceImpl implements CourseTypeService {

    @Autowired
    private CourseTypeDao courseTypeDao;

    @Override
    public CourseType getByName(String name) {
        return courseTypeDao.getByName(name);
    }

    @Override
    public CourseType getById(Long id) {
        return courseTypeDao.getById(id);
    }

    @Override
    public Boolean deleteById(Long id) {
        return courseTypeDao.deleteById(id);
    }

    @Override
    public Boolean isNameExist(String name) {
        return courseTypeDao.isNameExist(name);
    }

    @Override
    public Boolean updateById(CourseType courseType) {
        return courseTypeDao.update(courseType);
    }

    @Override
    public Boolean insert(CourseType courseType) {
        return courseTypeDao.insert(courseType);
    }

    @Override
    public List<CourseType> getCourseTypes(int pageNum, int pageSize) {
        return courseTypeDao.getCouseTypes((pageNum - 1) * pageSize, pageSize);
    }
}
