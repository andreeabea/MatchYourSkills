package com.website.entities;

import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.*;

@Document
public class User {
    @Id
    private String id;

    private String name;

    private String email;

    private String password;

    private byte[] image;

    private String description;

    private String phone;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public User(String id, String name, String email, byte[] image, String description, String phone, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.image = image;
        this.description = description;
        this.phone = phone;
        this.password = password;
    }
    public User()
    {

    }
}
