package com.hk.TS.pojo;
import lombok.Data;

@Data
public class Course {
    private Long id;
    private String name;
    private CourseType type_id;
    private String price;
    private String info;

    public Course(){

    }

    public Course(String name, CourseType type_id, String price, String info){
        this.name = name;
        this.type_id = type_id;
        this.price = price;
        this.info = info;
    }

    public Course(Long id, String name, CourseType type_id, String price, String info){
        this.id = id;
        this.name = name;
        this.type_id = type_id;
        this.price = price;
        this.info = info;
    }

//       public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public CourseType getType_id() {
//        return type_id;
//    }
//
//    public void setType_id(CourseType type_id) {
//        this.type_id = type_id;
//    }
//
//    public String getPrice() {
//        return price;
//    }
//
//    public void setPrice(String price) {
//        this.price = price;
//    }
//
//    public String getInfo() {
//        return info;
//    }
//
//    public void setInfo(String info) {
//        this.info = info;
//    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type_id=" + type_id +
                ", price='" + price + '\'' +
                ", info='" + info + '\'' +
                '}';
    }
}
