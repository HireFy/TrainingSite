package com.hk.TS.service.impl;

import com.hk.TS.dao.PersonDao;
import com.hk.TS.pojo.Person;
import com.hk.TS.pojo.Role;
import com.hk.TS.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/*TODO  Person名字检查重复*/
@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDao personDao;

    @Override
    public Boolean deleteById(Long id) {
        return personDao.deleteById(id);
    }

    @Override
    public Boolean insert(Person person) {
        return personDao.insert(person);
    }

    @Override
    public List<Person> getAllPersons() {
        return personDao.getAllPersons();
    }

    /*按照所传参数指定的属性更新*/
    @Override
    public Boolean updateById(Map<String, Object> maps) {
        Long id = Long.valueOf((String) maps.get("id"));

        /*找到指定id的person*/
        Person person = personDao.getById(id);

        for (Map.Entry entry : maps.entrySet()) {
            switch ((String) entry.getKey()) {
                case "name": {
                    person.setName((String) entry.getValue());
                    break;
                }
                case "age": {
                    person.setAge((Integer) entry.getValue());
                    break;
                }
                case "gender": {
                    person.setGender((String) entry.getValue());
                    break;
                }
                case "password": {
                    person.setPassword((String) entry.getValue());
                    break;
                }
                case "mail":{
                    person.setMail((String) entry.getValue());
                    break;
                }
                case "role": {
                    person.setRole(new Role(Long.valueOf((String) entry.getValue())));
                    break;
                }
                case "createTime": {
                    person.setCreateTime((Timestamp) entry.getValue());
                    break;
                }
                case "info": {
                    person.setInfo((String) entry.getValue());
                    break;
                }
            }
        }

        /*执行更新操作*/
        return personDao.update(person);
    }

    @Override
    public Person getById(Long id) {
        Person person = personDao.getById(id);
        return person;
    }

    /*创建用户*/
    /*todo: 前台传输的数据报错的异常检测，insert操作异常的捕获处理*/
    public Person create(Person person) {
        Person person1 = new Person();

        if (this.insert(person)) {
            return person1 = this.getById(person.getId());
        }
        return person1;
    }

    /*更新用户*/
    public Person update(Map<String, Object> map) {
        Person person = new Person();
        if (this.updateById(map)) {
            person = this.getById(Long.valueOf((String) map.get("id")));
        }
        return person;
    }

    /*用户名字重复检查*/
    public Boolean isNameExist(String name) {
        List<Person> people = this.getAllPersons();
        List<String> names = new ArrayList<>();
        for (Person person : people) {
            names.add(person.getName());
        }
        return names.contains(name);
    }
}
