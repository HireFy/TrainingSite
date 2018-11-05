package com.hk.TS.pojo;

public class CourseType {
    private Long id;
    private String name;
    private Long father;

    public CourseType(){

    }

    public CourseType(Long id){
        this.id = id;

    }

    public CourseType(Long id, String name, Long father){
        this.id = id;
        this.name = name;
        this.father = father;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getFather() {
        return father;
    }

    public void setFather(Long father) {
        this.father = father;
    }

    @Override
    public String toString() {
        return "CourseType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", father='" + father + '\'' +
                '}';
    }
}
