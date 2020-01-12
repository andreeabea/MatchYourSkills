package com.website.entities;

import org.bson.types.Binary;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;
import java.util.Set;

@Document(collection = "company")
public class Company extends User {

    private String website;

    public Person getManager() {
        return manager;
    }

    public void setManager(Person manager) {
        this.manager = manager;
    }

    private Person manager;

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Company(String id, String name, String email, Binary image, String description, String phone, String password, Set<Person> people, String website) {
        super(id, name, email, image, description, phone, password);
        this.website = website;
    }

    public Company(){}
}
