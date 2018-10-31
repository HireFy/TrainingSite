package com.hk.TS.controller.RestApi;

import com.hk.TS.pojo.Person;
import com.hk.TS.service.impl.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/person")
public class PersonController {

    @Autowired
    private PersonServiceImpl personService;

    @PostMapping("/create")
    public Person create(@RequestBody Person person) {
        return personService.create(person);
    }

    @GetMapping("/{id}")
    public Person getById(@PathVariable Long id) {
        return personService.getById(id);
    }

    @GetMapping("/delete/{id}")
    public Boolean deleteById(@PathVariable Long id) {
        return personService.deleteById(id);
    }

    @GetMapping("/all")
    public List<Person> getAll() {
        return personService.getAllPersons();
    }

    @PostMapping("/update")
    public Person updatePerson(@RequestBody Map<String, Object> map) {
        return personService.update(map);
    }

    @PostMapping("/name/exist")
    public Boolean isNameExist(@RequestBody String name) {
        return personService.isNameExist(name);
    }
}
