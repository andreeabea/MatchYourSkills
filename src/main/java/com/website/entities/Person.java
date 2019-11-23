package com.website.entities;

import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;
import java.util.List;
import java.util.Set;

enum Gender{Male, Female, Other};

@Document(collection = "person")
public class Person extends User {

    private Set<Skill> skills;

    private Date birthday;

    private Gender gender;

    private List<Job> jobs;

    public Set<Skill> getSkills() {
        return skills;
    }

    public void setSkills(Set<Skill> skills) {
        this.skills = skills;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public List<Job> getPastJobs() {
        return jobs;
    }

    public void setPastJobs(List<Job> jobs) {
        this.jobs = jobs;
    }

    public Person(String id, String name, String email, byte[] image, String description, String phone, Set<Skill> skills, Date birthday, Gender gender, List<Job> jobs) {
        super(id, name, email, image, description, phone);
        this.skills = skills;
        this.birthday = birthday;
        this.gender = gender;
        this.jobs = jobs;
    }

    public Person()
    {
        super();
    }
}