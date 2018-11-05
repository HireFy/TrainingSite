package com.hk.TS.service.impl;

import com.hk.TS.dao.PersonDao;
import com.hk.TS.pojo.Person;
import com.hk.TS.pojo.Role;
import com.hk.TS.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.print.attribute.IntegerSyntax;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/*TODO  Person名字检查重复*/
@Service("personService")
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDao personDao;

    @Override
    public Boolean deleteById(Long id) {
        return personDao.deleteById(id);
    }

    @Override
    public Boolean insert(Person person) {
        /*如果person的role没有，默认为4，normal角色*/
        if (person.getRole().getId() == null) {
            person.setRole(new Role((long) 4));
        }
        return personDao.insert(person);
    }

    @Override
    public List<Person> getAllPersons() {
        return personDao.getAllPersons();
    }

    /*按照所传参数指定的属性更新*/
    @Override
    public Boolean update(Person person, Map<String, Object> maps) {
        for (Map.Entry entry : maps.entrySet()) {
            switch ((String) entry.getKey()) {
                case "name": {
                    person.setName((String) entry.getValue());
                    break;
                }
//                修改age数据类型
                case "age": {
                    try {
                        person.setAge(Integer.valueOf((String) entry.getValue()));
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                        break;
                    }
                }
                case "gender": {
                    person.setGender((String) entry.getValue());
                    break;
                }
                case "password": {
                    person.setPassword((String) entry.getValue());
                    break;
                }
                case "mail": {
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
    public Person create(Person person, HttpSession session) {
        Person person1 = new Person();

        if (this.insert(person)) {
            person1 = this.getById(person.getId());
            session.setAttribute("name", person1.getName());
            return person1;
        }
        return person1;
    }

    /*更新用户*/
    public Boolean updateWithSession(Map<String, Object> map, HttpSession session) {
        Person person = new Person();
        Boolean flag = false;
        String name = (String) session.getAttribute("name");
        /*如果session中name为空
         * 就代表这请求是从忘记密码那来的
         * 就获取session中的邮箱*/
        if (name == null) {
            String mail = (String) session.getAttribute("mail");
            person = this.getByMail(mail);
        } else
            person = this.getByName(name);

        if (this.update(person, map))
            flag = true;

        session.setAttribute("name", person.getName());
        return flag;
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


    /*用户邮箱去重*/
    public Boolean isMailExist(String mail) {
        List<Person> people = this.getAllPersons();
        List<String> mails = new ArrayList<>();
        for (Person person : people) {
            mails.add(person.getMail());
        }
        return mails.contains(mail);
    }

    /*根据邮箱获取用户*/
    public Person getByMail(String mail) {
        return personDao.getByMail(mail);
    }

    /*TODO 注意邮箱重复，修改邮箱信息的时候邮箱去重*/
    /*用户邮箱密码验证*/
    /*如果密码正确，设置session的name属性的值*/
    public Boolean isPasswordRight(Map<String, Object> idAndPass, HttpSession session) {
        Person person = this.getByMail((String) idAndPass.get("mail"));
        if (person.getPassword().equals(idAndPass.get("password"))) {
            session.setAttribute("name", person.getName());
            return true;
        }
        return false;
    }

    /*根据名称获取用户*/
    public Person getByName(String name) {
        return personDao.getByName(name);
    }
}
