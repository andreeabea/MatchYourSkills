package com.website.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.List;
import java.util.Set;

@Entity
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
}
