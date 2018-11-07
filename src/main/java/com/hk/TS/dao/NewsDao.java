package com.hk.TS.dao;

import com.hk.TS.pojo.Person;

import java.util.List;

public interface NewsDao {
    Person getById(Long id);

    Boolean insert(Person person);

    Boolean deleteById(Long id);

    Boolean update(Person person);

    Person getByMail(String mail);

    Person getByName(String name);

    List<Person> getAllPersons();
}
