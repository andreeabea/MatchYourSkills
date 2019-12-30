package com.website.entities;

import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;
import java.util.Set;

@Document(collection = "company")
public class Company extends User {

    private List<Job> availableJobs;

    private String website;

    public List<Job> getAvailableJobs() {
        return availableJobs;
    }

    public void setAvailableJobs(List<Job> availableJobs) {
        this.availableJobs = availableJobs;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Company(String id, String name, String email, byte[] image, String description, String phone, String password, List<Job> availableJobs, Set<Person> people, String website) {
        super(id, name, email, image, description, phone, password);
        this.availableJobs = availableJobs;
        this.website = website;
    }

    public Company(){}
}
