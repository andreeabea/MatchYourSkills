package com.website.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

enum Gender{Male, Female, Other};

@Entity // This tells Hibernate to make a table out of this class
public class Person extends User {

    //@OneToMany(mappedBy = "person", cascade = CascadeType.ALL)
    private Set<Skill> skills;

    private Date birthday;

    private Gender gender;

    private List<Job> pastJobs;

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
        return pastJobs;
    }

    public void setPastJobs(List<Job> pastJobs) {
        this.pastJobs = pastJobs;
    }
}