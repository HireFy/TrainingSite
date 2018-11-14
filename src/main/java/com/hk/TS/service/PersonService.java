package com.hk.TS.service;

import com.hk.TS.pojo.Person;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public interface PersonService {
    Person getById(Long id);

    Boolean insert(Person person);

    Boolean deleteById(Long id);

    Boolean update(Person person,Map<String, Object> maps);

    Person getByMail(String mail);

    Boolean isMailExist(String mail);

    Boolean isNameExist(String name);

    Person getByName(String name);

    List<Person> getPersons(int pageNum, int pageSize);

    ModelAndView byPassView(HttpSession session);

    int getPageCount();

    List<Person> getPersons(int pageNum);
}
