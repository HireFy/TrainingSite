package com.hk.TS.service.impl;

import com.hk.TS.dao.PersonDao;
import com.hk.TS.pojo.Person;
import com.hk.TS.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;


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
        if (person.getRoleId() == null) {
            person.setRoleId((long) 4);
        }
        return personDao.insert(person);
    }

    @Override
    public List<Person> getPersons(int pageNum, int pageSize) {
        return personDao.getPersons((pageNum-1)*pageSize, pageSize);
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
                    person.setRoleId(Long.valueOf((String) entry.getValue()));
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

    /*TODO 更新信息的操作是否改为用person对象，restapi那只返回更新操作的成功或失败*/
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

    public Boolean isNameExist(String name) {
        return personDao.isNameExist(name);
    }



    public Boolean isMailExist(String mail) {
        return personDao.isMailExist(mail);
    }

    /*根据邮箱获取用户*/
    public Person getByMail(String mail) {
        return personDao.getByMail(mail);
    }

    /*TODO 注意邮箱重复，修改邮箱信息的时候邮箱去重*/
    /*TODO 管理员页面要分开，一个是超级管理员，一个是信息管理员*/
    /*用户邮箱密码验证*/
    /*如果密码正确，设置session的name属性的值*/
    /*当用户的role id为1或2时设置session
    * */
    public Boolean isPasswordRight(Map<String, Object> idAndPass, HttpSession session) {
        Person person = this.getByMail((String) idAndPass.get("mail"));
        Long roleid = person.getRoleId();
        if (roleid == 1) {
            session.setAttribute("roleid", roleid);
        } else if (roleid == 2) {
            session.setAttribute("roleid", roleid);
        }
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

    /*分流用户页面和管理员页面*/
    /*todo 管理员页面model数据的填充*/
    public ModelAndView byPassView(HttpSession session) {
        ModelAndView mav = new ModelAndView();
        /*填充数据*/
        List<Person> personList = personDao.getPersons(1, 5);
        mav.addObject("personList", personList);
        /*等待前端*/

        /*设置view*/
        Long roleid = (Long) session.getAttribute("roleid");
        if (roleid != null) {
            if (roleid == 1) {
                mav.setViewName("super_admin");
            }
            if (roleid == 2) {
                mav.setViewName("super_admin");
            }
        }else
            mav.setViewName("user");
        return mav;
    }
}
