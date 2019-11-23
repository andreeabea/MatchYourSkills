package com.website.entities;

import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;
import java.util.Set;

@Document(collection = "company")
public class Company extends User {

    private List<Job> availableJobs;

    private Set<Person> people;

    private String website;

    public List<Job> getAvailableJobs() {
        return availableJobs;
    }

    public void setAvailableJobs(List<Job> availableJobs) {
        this.availableJobs = availableJobs;
    }

    public Set<Person> getPeople() {
        return people;
    }

    public void setPeople(Set<Person> people) {
        this.people = people;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Company(String id, String name, String email, byte[] image, String description, String phone, List<Job> availableJobs, Set<Person> people, String website) {
        super(id, name, email, image, description, phone);
        this.availableJobs = availableJobs;
        this.people = people;
        this.website = website;
    }

    public Company(){}
}
