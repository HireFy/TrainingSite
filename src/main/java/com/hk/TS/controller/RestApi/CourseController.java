package com.hk.TS.controller.RestApi;

import com.hk.TS.pojo.Course;
import com.hk.TS.pojo.Person;
import com.hk.TS.service.impl.CourseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseServiceImpl courseService;

    @PostMapping("/create")
    public Boolean create(@RequestBody Course course) {
        return courseService.create(course);
    }

    @GetMapping("/{id}")
    public Course getById(@PathVariable Long id) {
        return courseService.getById(id);
    }

    @GetMapping("/delete/{id}")
    public Boolean deleteById(@PathVariable Long id) {
        return courseService.deleteById(id);
    }

    @GetMapping("/all")
    public List<Course> getAll() {
        return courseService.getCourses(1, Integer.MAX_VALUE);
    }

    @PostMapping("/update")
    public Boolean updatePerson(@RequestBody Course course) {
        return courseService.update(course);
    }

    @PostMapping("/name/exist")
    public Boolean isNameExist(@RequestBody String name) {
        return courseService.isNameExist(name);
    }
}
