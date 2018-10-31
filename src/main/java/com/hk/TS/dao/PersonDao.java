package com.hk.TS.dao;

import com.hk.TS.controller.Index;
import com.hk.TS.pojo.Person;

import java.util.List;
import java.util.Map;

public interface PersonDao {
    Person getById(Long id);

    Boolean insert(Person person);

    Boolean deleteById(Long id);

    Boolean update(Person person);

    List<Person> getAllPersons();
}
