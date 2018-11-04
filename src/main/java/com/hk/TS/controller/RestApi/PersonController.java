package com.hk.TS.controller.RestApi;

import com.hk.TS.pojo.Person;
import com.hk.TS.service.impl.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
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
    public Boolean updatePerson(@RequestBody Map<String, Object> map, HttpSession session) {
        return personService.updateWithSession(map, session);
    }

    /*因为前端ajax传递Name值为007在服务端会是""007""这样的情况，所以把原来的参数改成Map*/
//    @RequestBody Map<String, Object> name
    @PostMapping("/name/exist")
    public Boolean isNameExist(@RequestParam String name) {
//        return personService.isNameExist((String) map.get("name"));
        return personService.isNameExist((String) name);
    }

    @PostMapping("/password/verify")
    public Boolean isPassRight(@RequestBody Map<String, Object> mailAndPass, HttpSession session) {
        return personService.isPasswordRight(mailAndPass, session);
    }
}
