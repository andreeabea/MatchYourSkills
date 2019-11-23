package com.website.entities;

import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.*;

@Document(collection = "skill")
public class Skill {

    @Id
    private Integer id;

    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Skill(Integer id, String name) {
        this.id = id;
        this.name = name;
    }
}
