package com.hk.TS.service.impl;

import com.hk.TS.dao.CourseDao;
import com.hk.TS.dao.CourseTypeDao;
import com.hk.TS.dao.PersonDao;
import com.hk.TS.pojo.Course;
import com.hk.TS.pojo.CourseType;
import com.hk.TS.pojo.Person;
import com.hk.TS.pojo.Role;
import com.hk.TS.service.CourseService;
import com.hk.TS.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Service("courseService")
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseDao courseDao;

    @Override
    public Boolean deleteById(Long id) {
        return courseDao.deleteById(id);
    }

    @Override
    public Boolean insert(Course course) {
        return courseDao.insert(course);
    }


    @Override
    public List<Course> getCourses(int pageNum, int pageSize) {
        return courseDao.getCourses((pageNum - 1) * pageSize, pageSize);
    }

    @Override
    public Course getById(Long id) {
        return courseDao.getById(id);
    }

    /*更新课程*/
    public Boolean update(Course course) {
        return courseDao.update(course);
    }

    /*名字重复检查*/
    public Boolean isNameExist(String name) {
        return courseDao.isNameExist(name);
    }

    public Boolean create(Course course) {
        return courseDao.insert(course);
    }

}