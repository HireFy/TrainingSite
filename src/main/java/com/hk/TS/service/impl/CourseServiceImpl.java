package com.hk.TS.service.impl;

import com.hk.TS.dao.CourseDao;
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
        public Boolean insert(Course course ) {
            return courseDao.insert(course);
        }

        @Override
        public List<Course> getAllCourse() {
            return courseDao.getAllCourse();
        }

        /*按照所传参数指定的属性更新*/
        @Override
        public Boolean updateById(Map<String, Object> maps) {
            Long id = Long.valueOf((String) maps.get("id"));

            /*找到指定id的course*/
            Course course = courseDao.getById(id);

            for (Map.Entry entry : maps.entrySet()) {
                switch ((String) entry.getKey()) {
                    case "name": {
                        course.setName((String) entry.getValue());
                        break;
                    }
                    case "courseType": {
                        course.setCourseType(new CourseType(Long.valueOf((String) entry.getValue())));
                        break;
                    }
                    case "price": {
                        course.setPrice((String) entry.getValue());
                        break;
                    }
                    case "info": {
                        course.setInfo((String) entry.getValue());
                        break;
                    }
                }
            }

            /*执行更新操作*/
            return courseDao.update(course);
        }

        @Override
        public Course getById(Long id) {
            Course course = courseDao.getById(id);
            return course;
        }

        /*新建添加课程*/
        /*todo: 前台传输的数据报错的异常检测，insert操作异常的捕获处理*/
        public Course create(Course course) {
            Course course1 = new Course();

            if (this.insert(course)) {
                return course1 = this.getById(course.getId());
            }
            return course1;
        }

        /*更新用户*/
        public Course update(Map<String, Object> map) {
            Course course = new Course();
            if (this.updateById(map)) {
                course = this.getById(Long.valueOf((String) map.get("id")));
            }
            return course;
        }

        /*用户名字重复检查*/
        public Boolean isNameExist(String name) {
            List<Course> coursess = this.getAllCourse();
            List<String> names = new ArrayList<>();
            for (Course course : coursess) {
                names.add(course.getName());
            }
            return names.contains(name);
        }
    }