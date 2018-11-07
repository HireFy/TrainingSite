package com.hk.TS.dao;

import com.hk.TS.pojo.Person;
import com.hk.TS.pojo.Role;
import com.hk.TS.service.PersonService;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class PersonDaoTest {
//
//    @Autowired
//    private static PersonServiceImpl personService;

    public static void main(String[] args) {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        PersonService service = (PersonService) ctx.getBean("personService");



//        System.out.println(service.deleteById((long) 8));
//
//        Person person = service.getById((long) 8);
//        System.out.println(person);

          /*原来的update，一次全部更新*/
//        Role role = new Role((long) 1);
//        Person person1 = new Person((long) 2, "fjw", 12, "男", "123123", role, " ");
//        System.out.println(service.update(person1));

        /*现在的update只更新需要修改的值*/
//        Map<String, Object> maps = new HashMap<>();
//        maps.put("id", (long)3);
//        maps.put("name", "龚宇航");
//        maps.put("password", "sdfsdf");
//        System.out.println(service.updateById(maps));

//        Role role = new Role((long) 2);
//        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//        Person person1 = new Person("lisi", 23, "男", "123123123", role, timestamp," ");
//        Boolean isInsert = service.insert(person1);
//        System.out.println(person1.getId());

//        Map<String, Object> maps = new HashMap<>();
//        maps.put("id", 2);
//        maps.put("name", "kkk");

//        System.out.println(service.updateNameById(maps));

//        System.out.println(service.getAllPersons());

        System.out.println(service.getByMail("2824908821@qq.com"));
    }
}