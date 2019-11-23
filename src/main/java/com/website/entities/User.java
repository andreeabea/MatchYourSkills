package com.website.entities;

import org.springframework.data.mongodb.core.index.Indexed;

import javax.persistence.*;

public class User {
    @Id
    private String id;

    private String name;

    @Indexed(unique = true)
    private String email;

    private byte[] image;

    private String description;

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
//needs password hashed using bcrypt

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

    public User(String id, String name, String email, byte[] image, String description) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.image = image;
        this.description = description;
    }
    public User()
    {

    }
}
